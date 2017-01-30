# SwaggerClient::OauthApi

All URIs are relative to *https://api.meltwater.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_oauth2_token**](OauthApi.md#post_oauth2_token) | **POST** /oauth2/token | Create an access token


# **post_oauth2_token**
> OAuth2Token post_oauth2_token(user_key, authorization, grant_type, scope)

Create an access token

Create an OAuth2 access token based on the provided `client_id` and `client_secret`

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OauthApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).

authorization = "authorization_example" # String | `client_id:client_secret`  Basic Auth (RFC2617) credentials. Must contain the realm `Basic` followed by a Base64-encoded `client_id`:`client_secret` pair.   #### Example:      Basic aAlfbb1haWxDSXhhDXxxZWKJAyZXQ=

grant_type = "grant_type_example" # String | OAuth2 grant type, use `client_credentials`

scope = "scope_example" # String | OAuth2 scope, use `search`


begin
  #Create an access token
  result = api_instance.post_oauth2_token(user_key, authorization, grant_type, scope)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OauthApi->post_oauth2_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/). | 
 **authorization** | **String**| &#x60;client_id:client_secret&#x60;  Basic Auth (RFC2617) credentials. Must contain the realm &#x60;Basic&#x60; followed by a Base64-encoded &#x60;client_id&#x60;:&#x60;client_secret&#x60; pair.   #### Example:      Basic aAlfbb1haWxDSXhhDXxxZWKJAyZXQ&#x3D; | 
 **grant_type** | **String**| OAuth2 grant type, use &#x60;client_credentials&#x60; | 
 **scope** | **String**| OAuth2 scope, use &#x60;search&#x60; | 

### Return type

[**OAuth2Token**](OAuth2Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



