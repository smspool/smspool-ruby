# SMSPool::BusinessApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**business_create**](BusinessApi.md#business_create) | **POST** /business/create | Register user |
| [**business_user_history**](BusinessApi.md#business_user_history) | **POST** /business/user/history | History |
| [**business_user_update**](BusinessApi.md#business_user_update) | **POST** /business/user/update | Update |
| [**business_users**](BusinessApi.md#business_users) | **GET** /business/users | Retrieve users |


## business_create

> Object business_create(username, password, opts)

Register user

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::BusinessApi.new
username = 'username_example' # String | 
password = 'password_example' # String | 
opts = {
  daily_spend_limit: 8.14 # Float | Optional daily spend cap in USD. Omit for no limit.
}

begin
  # Register user
  result = api_instance.business_create(username, password, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_create: #{e}"
end
```

#### Using the business_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> business_create_with_http_info(username, password, opts)

```ruby
begin
  # Register user
  data, status_code, headers = api_instance.business_create_with_http_info(username, password, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **password** | **String** |  |  |
| **daily_spend_limit** | **Float** | Optional daily spend cap in USD. Omit for no limit. | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## business_user_history

> Object business_user_history(id)

History

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::BusinessApi.new
id = 56 # Integer | User ID retrievd from `Retrieve users` endpoint

begin
  # History
  result = api_instance.business_user_history(id)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_user_history: #{e}"
end
```

#### Using the business_user_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> business_user_history_with_http_info(id)

```ruby
begin
  # History
  data, status_code, headers = api_instance.business_user_history_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_user_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User ID retrievd from &#x60;Retrieve users&#x60; endpoint |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## business_user_update

> Object business_user_update(id, opts)

Update

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::BusinessApi.new
id = 56 # Integer | User ID retrievd from `Retrieve users` endpoint
opts = {
  password: 'password_example', # String | Leave empty if you do not wish to update the password
  balance: 8.14, # Float | Leave empty if you do not wish to update the balance, sets the balance by the requested value
  active: 56, # Integer | Disable/enable user account (optional)
  daily_spend_limit: 8.14 # Float | Daily spend cap in USD. Leave empty to leave unchanged, send -1 to remove the cap, 0 to block all spending.
}

begin
  # Update
  result = api_instance.business_user_update(id, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_user_update: #{e}"
end
```

#### Using the business_user_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> business_user_update_with_http_info(id, opts)

```ruby
begin
  # Update
  data, status_code, headers = api_instance.business_user_update_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_user_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User ID retrievd from &#x60;Retrieve users&#x60; endpoint |  |
| **password** | **String** | Leave empty if you do not wish to update the password | [optional] |
| **balance** | **Float** | Leave empty if you do not wish to update the balance, sets the balance by the requested value | [optional] |
| **active** | **Integer** | Disable/enable user account (optional) | [optional] |
| **daily_spend_limit** | **Float** | Daily spend cap in USD. Leave empty to leave unchanged, send -1 to remove the cap, 0 to block all spending. | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## business_users

> Object business_users

Retrieve users

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::BusinessApi.new

begin
  # Retrieve users
  result = api_instance.business_users
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_users: #{e}"
end
```

#### Using the business_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> business_users_with_http_info

```ruby
begin
  # Retrieve users
  data, status_code, headers = api_instance.business_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling BusinessApi->business_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

