# SwaggerClient::SwaggerDocApi

All URIs are relative to *https://api.meltwater.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_complete_swagger_spec**](SwaggerDocApi.md#get_complete_swagger_spec) | **GET** /v2/swagger_doc | Meltwater API Swagger Spec


# **get_complete_swagger_spec**
> get_complete_swagger_spec(user_key)

Meltwater API Swagger Spec

Get the complete Swagger Spec that describes all Meltwater API endpoints.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SwaggerDocApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).


begin
  #Meltwater API Swagger Spec
  api_instance.get_complete_swagger_spec(user_key)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SwaggerDocApi->get_complete_swagger_spec: #{e}"
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



