# swagger_client

_**Disclaimer: This client was generated automatically based on our swagger_spec. We are sharing it for purely demonstrative purposes. We hope it it helps. If you have any comments please open an issue, we would love to hear from you!**_

The Meltwater API provides the needed resources for Meltwater clients to create & delete REST Hooks and stream Meltwater search results to your specified destination.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build date: 2017-01-31T10:15:31.903+01:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).

authorization = "authorization_example" # String | `email`:`password`    Basic Auth (RFC2617) credentials. Must contain the realm `Basic` followed by a  Base64-encoded `email`:`password` pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ=


begin
  #Register new client
  result = api_instance.create_client_credentials(user_key, authorization)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->create_client_credentials: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.meltwater.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::ClientsApi* | [**create_client_credentials**](docs/ClientsApi.md#create_client_credentials) | **POST** /v1/clients | Register new client
*SwaggerClient::ClientsApi* | [**delete_client_credentials**](docs/ClientsApi.md#delete_client_credentials) | **DELETE** /v1/clients/{client_id} | Delete client.
*SwaggerClient::HooksApi* | [**create_hook**](docs/HooksApi.md#create_hook) | **POST** /v1/hooks | Creates a hook for one of your predefined searches.
*SwaggerClient::HooksApi* | [**delete_hook**](docs/HooksApi.md#delete_hook) | **DELETE** /v1/hooks/{id} | Delete an existing hook.
*SwaggerClient::HooksApi* | [**get_all_hooks**](docs/HooksApi.md#get_all_hooks) | **GET** /v1/hooks | List all hooks.
*SwaggerClient::OauthApi* | [**create_token**](docs/OauthApi.md#create_token) | **POST** /oauth2/token | Create an access token
*SwaggerClient::SearchesApi* | [**get_all_searches**](docs/SearchesApi.md#get_all_searches) | **GET** /v1/searches | List your saved searches.


## Documentation for Models

 - [SwaggerClient::ClientCredentials](docs/ClientCredentials.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::ErrorsCollection](docs/ErrorsCollection.md)
 - [SwaggerClient::Hook](docs/Hook.md)
 - [SwaggerClient::HooksCollection](docs/HooksCollection.md)
 - [SwaggerClient::OAuth2Token](docs/OAuth2Token.md)
 - [SwaggerClient::PostV1Hooks](docs/PostV1Hooks.md)
 - [SwaggerClient::Search](docs/Search.md)
 - [SwaggerClient::SearchesCollection](docs/SearchesCollection.md)


## Documentation for Authorization

 All endpoints do not require authorization.

