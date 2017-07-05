# SwaggerClient::HooksApi

All URIs are relative to *https://api.meltwater.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_hook**](HooksApi.md#create_hook) | **POST** /v2/hooks | Creates a hook for one of your predefined searches.
[**delete_hook**](HooksApi.md#delete_hook) | **DELETE** /v2/hooks/{hook_id} | Delete an existing hook.
[**get_all_hooks**](HooksApi.md#get_all_hooks) | **GET** /v2/hooks | List all hooks.


# **create_hook**
> Hook create_hook(user_key, authorization, v2_hooks, opts)

Creates a hook for one of your predefined searches.

Creates a hook for one of your predefined searches.  Delivers search results for the query referenced by the `search_id` to the `target_url` via HTTP POST. Note that a `hook_id` will be returned on successful creation, this id is needed to delete the hook.   We are also returning the header: `X-Hook-Secret`, a shared secret used to sign the document body pushed to your `target_url`.    Requires an OAuth access token.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HooksApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).

authorization = "authorization_example" # String | `Oauth Access Token`    OAuth access token (RFC 6749). Must contain the access token type `Bearer`  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...

v2_hooks = SwaggerClient::PostV2Hooks.new # PostV2Hooks | 

opts = { 
  x_hook_secret: "x_hook_secret_example" # String | Shared secret for content signing/verification.    The shared secret header is optional and can be provided by the user or will  be set by the API. Must be between 16 and 64 characters.  Obtain the shared secret from the response header `X-Hook-Secret`.    #### Example:        e2d264b524240b9572ebc2fc7eebd980
}

begin
  #Creates a hook for one of your predefined searches.
  result = api_instance.create_hook(user_key, authorization, v2_hooks, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HooksApi->create_hook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/). | 
 **authorization** | **String**| &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO... | 
 **v2_hooks** | [**PostV2Hooks**](PostV2Hooks.md)|  | 
 **x_hook_secret** | **String**| Shared secret for content signing/verification.    The shared secret header is optional and can be provided by the user or will  be set by the API. Must be between 16 and 64 characters.  Obtain the shared secret from the response header &#x60;X-Hook-Secret&#x60;.    #### Example:        e2d264b524240b9572ebc2fc7eebd980 | [optional] 

### Return type

[**Hook**](Hook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_hook**
> delete_hook(user_key, authorization, hook_id)

Delete an existing hook.

Delete an existing hook.  Removes the hook and stops sending any search results to the target_url.    Requires an OAuth access token.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HooksApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).

authorization = "authorization_example" # String | `Oauth Access Token`    OAuth access token (RFC 6749). Must contain the access token type `Bearer`  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...

hook_id = "hook_id_example" # String | Hook ID received from creating a hook


begin
  #Delete an existing hook.
  api_instance.delete_hook(user_key, authorization, hook_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HooksApi->delete_hook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/). | 
 **authorization** | **String**| &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO... | 
 **hook_id** | **String**| Hook ID received from creating a hook | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_hooks**
> HooksCollection get_all_hooks(user_key, authorization)

List all hooks.

List all hooks.     Delivers all previously generated hooks.    Requires an OAuth access token.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::HooksApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/).

authorization = "authorization_example" # String | `Oauth Access Token`    OAuth access token (RFC 6749). Must contain the access token type `Bearer`  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO...


begin
  #List all hooks.
  result = api_instance.get_all_hooks(user_key, authorization)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling HooksApi->get_all_hooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.com](https://developer.meltwater.com/admin/applications/). | 
 **authorization** | **String**| &#x60;Oauth Access Token&#x60;    OAuth access token (RFC 6749). Must contain the access token type &#x60;Bearer&#x60;  followed by an OAuth access token.    #### Example:        Bearer KKwmfHwxsEoeMDTMAfxOpO... | 

### Return type

[**HooksCollection**](HooksCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



