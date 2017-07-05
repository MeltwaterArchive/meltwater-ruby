# SwaggerClient::SchemasApi

All URIs are relative to *https://api.meltwater.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_editorial_streaming_json_schema**](SchemasApi.md#get_editorial_streaming_json_schema) | **GET** /v2/schemas/editorial_streaming.json | Editorial Streaming JSON schema
[**get_social_streaming_json_schema**](SchemasApi.md#get_social_streaming_json_schema) | **GET** /v2/schemas/social_streaming.json | Social Streaming JSON schema


# **get_editorial_streaming_json_schema**
> get_editorial_streaming_json_schema(user_key)

Editorial Streaming JSON schema

Get the JSON schema describing the layout of Editorial Streaming documents.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SchemasApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).


begin
  #Editorial Streaming JSON schema
  api_instance.get_editorial_streaming_json_schema(user_key)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SchemasApi->get_editorial_streaming_json_schema: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/). | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_social_streaming_json_schema**
> get_social_streaming_json_schema(user_key)

Social Streaming JSON schema

Get the JSON schema describing the layout of Social Streaming documents.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SchemasApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).


begin
  #Social Streaming JSON schema
  api_instance.get_social_streaming_json_schema(user_key)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SchemasApi->get_social_streaming_json_schema: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/). | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



