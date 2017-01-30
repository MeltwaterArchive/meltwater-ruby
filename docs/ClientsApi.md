# SwaggerClient::ClientsApi

All URIs are relative to *https://api.meltwater.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_v1_clients_client_id**](ClientsApi.md#delete_v1_clients_client_id) | **DELETE** /v1/clients/{client_id} | Delete client.
[**post_v1_clients**](ClientsApi.md#post_v1_clients) | **POST** /v1/clients | Register new client


# **delete_v1_clients_client_id**
> delete_v1_clients_client_id(user_key, authorization, client_id)

Delete client.

Delete client.    Deletes your current client credentials consisting of  client_id and client_secret. After calling this resource, you will not be able  to use the Meltwater API unless you create a new set of client credentials!  Requires your Meltwater credentials (`email`:`password`) to authenticate.   #### Appendix    The Base64-encoded `email`:`password` string can be generated in a terminal  with following command:        $ echo -n \"your_email@your_domain.com:your_secret_password\" | base64    <i>You will need `base64` installed.</i>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).

authorization = "authorization_example" # String | `email`:`password`    Basic Auth (RFC2617) credentials. Must contain the realm `Basic` followed by a  Base64-encoded `email`:`password` pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ=

client_id = "client_id_example" # String | Client ID


begin
  #Delete client.
  api_instance.delete_v1_clients_client_id(user_key, authorization, client_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->delete_v1_clients_client_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/). | 
 **authorization** | **String**| &#x60;email&#x60;:&#x60;password&#x60;    Basic Auth (RFC2617) credentials. Must contain the realm &#x60;Basic&#x60; followed by a  Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ&#x3D; | 
 **client_id** | **String**| Client ID | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_v1_clients**
> ClientCredentials post_v1_clients(user_key, authorization)

Register new client

Register new client     Creates a new pair of client credentials (`client_id`/`client_secret` pair).  Requires your Meltwater credentials (`email`:`password`) to authenticate.   #### Appendix    The Base64-encoded `email`:`password` string can be generated in a terminal  with following command:        $ echo -n \"your_email@your_domain.com:your_secret_password\" | base64    <i>You will need `base64` installed.</i>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ClientsApi.new

user_key = "user_key_example" # String | The `user_key` from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/).

authorization = "authorization_example" # String | `email`:`password`    Basic Auth (RFC2617) credentials. Must contain the realm `Basic` followed by a  Base64-encoded `email`:`password` pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ=


begin
  #Register new client
  result = api_instance.post_v1_clients(user_key, authorization)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ClientsApi->post_v1_clients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_key** | **String**| The &#x60;user_key&#x60; from [developer.meltwater.io](https://developer.meltwater.io/admin/applications/). | 
 **authorization** | **String**| &#x60;email&#x60;:&#x60;password&#x60;    Basic Auth (RFC2617) credentials. Must contain the realm &#x60;Basic&#x60; followed by a  Base64-encoded &#x60;email&#x60;:&#x60;password&#x60; pair using your Meltwater credentials.    #### Example:        Basic bXlfZW1haWxAZXhhbXJzZWNyZXQ&#x3D; | 

### Return type

[**ClientCredentials**](ClientCredentials.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



