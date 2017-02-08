#!/usr/local/bin/ruby -w
# Make Sure to install the gem as per the README before running this script.
#
# MW_USER_KEY='<your-user-key>' \
#   MW_USER='<your-meltwater-email>' \
#   MW_PASSWORD='<your-meltwater-password>' \
#   ruby ./mwapi.rb
require 'base64'
require 'swagger_client'

PREFIX = 'MeltwaterAPI:'

# This is a proof of concept written quickly, to demonstrate the use of the
# client. It is not a suggestion for how you should implement the client
# yourself.
#
class Meltwater
  attr_accessor :clients, :hooks, :oauth, :searches

  def initialize
    debug_config = SwaggerClient::Configuration.default.tap do |c|
      c.debugging = true
    end
    default_client = SwaggerClient::ApiClient.new(debug_config)

    @clients = SwaggerClient::ClientsApi.new default_client
    @hooks = SwaggerClient::HooksApi.new default_client
    @oauth = SwaggerClient::OauthApi.new default_client
    @searches = SwaggerClient::SearchesApi.new default_client

    # String | The `user_key` from
    # [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).
    @user_key = ENV['MW_USER_KEY']
    @mw_pair = Base64.strict_encode64(
      "#{ENV['MW_USER']}:#{ENV['MW_PASSWORD']}"
    )

    # String | Oauth2 grant_type.
    # Should be set to client_credentials
    @grant_type = 'client_credentials'

    # String | Oauth2 token scope.
    # Currently only 'search' is supported
    @scope = 'search'
    @client_id = nil
    @client_secret = nil
    @authorizsation ||= nil
  end

  def create_token
    create_client
    @oauth.create_token(@user_key, "Basic #{client_pair}",
                        @grant_type, @scope)
  end

  def auth_header(token)
    @authorization = "#{token.token_type} #{token.access_token}"
  end

  def get_all_searches(authorization)
    @searches.get_all_searches(@user_key, authorization)
  end

  def create_hook(authorization, hook)
    @hooks.create_hook(@user_key, authorization, hook)
  end

  def delete_hook(authorization, hook_id)
    @hooks.delete_hook(@user_key, authorization, hook_id)
  end

  def delete_client
    @clients.delete_client_credentials(@user_key,
                                       "Basic #{@mw_pair}",
                                       @client_id)
  end

  private

  def create_client
    puts "#{PREFIX} Creating Client Credentials Pair for User : #{ENV['MW_USER']}"
    creds = @clients.create_client_credentials(@user_key, "Basic #{@mw_pair}")
    @client_id = creds.client_id
    @client_secret = creds.client_secret
  end

  def client_pair
    Base64.strict_encode64(
      "#{@client_id}:#{@client_secret}"
    )
  end
end

class HookDTO < SwaggerClient::PostV1Hooks;
end

begin
  mw = Meltwater.new

  puts "#{PREFIX} Creating Authentication Token..."
  token = mw.create_token
  authorization = mw.auth_header token

  puts "#{PREFIX} Fetching Searching..."
  searches = mw.get_all_searches authorization

  search_id = searches.searches.first.search_id

  puts "#{PREFIX} Creating hook for search id: #{search_id}"
  hook = HookDTO.new
  hook.target_url = 'http://httpbin.org/status/410'
  hook.search_id = search_id
  response = mw.create_hook(authorization, hook)

  hook_id = response.hook_id
  puts "#{PREFIX} Deleting hook for search id: #{search_id}"
  mw.delete_hook(authorization, hook_id)

  puts "#{PREFIX} Deleting Client Credentials"
  mw.delete_client
rescue SwaggerClient::ApiError => e
  puts "#{PREFIX} Exception when calling MW API: #{e}"
end
