=begin
#The Meltwater API

#The Meltwater API provides the needed resources for Meltwater clients to create & delete REST Hooks and stream Meltwater search results to your specified destination.

OpenAPI spec version: 0.9.0
Contact: support@api.meltwater.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::HooksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HooksApi' do
  before do
    # run before each test
    @instance = SwaggerClient::HooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HooksApi' do
    it 'should create an instact of HooksApi' do
      expect(@instance).to be_instance_of(SwaggerClient::HooksApi)
    end
  end

  # unit tests for delete_v1_hooks_id
  # Delete an existing hook.
  # Delete an existing hook.  Removes the hook and stops sending any search results to the target_url.    Requires an OAuth access token.
  # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
  # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
  # @param id Hook ID received from creating a hook
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_v1_hooks_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_v1_hooks
  # List all hooks.
  # List all hooks.     Delivers all previously generated hooks.    Requires an OAuth access token.
  # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
  # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
  # @param [Hash] opts the optional parameters
  # @return [HooksCollection]
  describe 'get_v1_hooks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v1_hooks
  # Creates a hook for one of your predefined searches.
  # Creates a hook for one of your predefined searches.  Delivers search results for the query referenced by thesearch_id to the target_url via HTTP POST. Note that a hook id will be returned on successful creation, this id is needed to delete the hook.     Requires an OAuth access token.
  # @param user_key The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).
  # @param authorization &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...
  # @param v1_hooks 
  # @param [Hash] opts the optional parameters
  # @return [Hook]
  describe 'post_v1_hooks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end