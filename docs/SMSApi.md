# SMSPool::SMSApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**purchase_sms**](SMSApi.md#purchase_sms) | **POST** /purchase/sms | Order SMS |
| [**request_active**](SMSApi.md#request_active) | **POST** /request/active | Active orders |
| [**request_archive**](SMSApi.md#request_archive) | **POST** /request/archive | Archive all orders |
| [**request_areacodes**](SMSApi.md#request_areacodes) | **POST** /request/areacodes | Request available areacodes |
| [**request_history**](SMSApi.md#request_history) | **POST** /request/history | Order History |
| [**sms_activate**](SMSApi.md#sms_activate) | **POST** /sms/activate | Activate SMS |
| [**sms_all_stock**](SMSApi.md#sms_all_stock) | **POST** /sms/all_stock | One-time stock for all services |
| [**sms_cancel**](SMSApi.md#sms_cancel) | **POST** /sms/cancel | Cancel SMS |
| [**sms_cancel_all**](SMSApi.md#sms_cancel_all) | **POST** /sms/cancel_all | Cancel All SMS |
| [**sms_check**](SMSApi.md#sms_check) | **POST** /sms/check | Check SMS |
| [**sms_check_resend**](SMSApi.md#sms_check_resend) | **POST** /sms/check_resend | Check Resend |
| [**sms_clear_cache**](SMSApi.md#sms_clear_cache) | **POST** /sms/clear_cache | Clear SMS Cache |
| [**sms_missed**](SMSApi.md#sms_missed) | **POST** /sms/missed | Missed SMS |
| [**sms_reactivate**](SMSApi.md#sms_reactivate) | **POST** /sms/reactivate | Reactivate SMS |
| [**sms_resend**](SMSApi.md#sms_resend) | **POST** /sms/resend | Resend |
| [**sms_stock**](SMSApi.md#sms_stock) | **POST** /sms/stock | One-time SMS stock |
| [**sms_unarchive**](SMSApi.md#sms_unarchive) | **POST** /sms/unarchive | Unarchive order |


## purchase_sms

> Object purchase_sms(service, opts)

Order SMS

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
service = 'service_example' # String | The service or number retrieved from the `Service List` endpoint
opts = {
  country: 'country_example', # String | The country in ISO format or number retrieved from the `Country List` endpoint
  pool: 'pool_example', # String | The pool or number retrieved from the `Pool List` endpoint (optional)
  max_price: 8.14, # Float | The max price you are willing to pay per number
  pricing_option: 56, # Integer | Set to 0 if you'd like the cheapest numbers, set to 1 for highest success rate
  quantity: 56, # Integer | Quantity of numbers ordered
  areacode: 'areacode_example', # String | Areacodes you would like to include or exclude in JSON format
  exclude: 56, # Integer | Set exclude to 1 if you would like to exclude all listed area codes.
  create_token: 56, # Integer | Optional param; set to 1 if you'd like to create a token link that anyone can access.
  activation_type: 'activation_type_example', # String | Options: SMS, VOICE, FLASH. SMS will receive regular SMS, VOICE will receive phone calls that mentions the SMS and FLASH is for FLASH calls for verification.
  carrier: 56, # Integer | Options: 1 or 2. Pick a carrier (only works for pool Foxtrot US)
  phonenumber: 56, # Integer | In case you want to select a specific phone number to order
  software: 56 # Integer | 
}

begin
  # Order SMS
  result = api_instance.purchase_sms(service, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->purchase_sms: #{e}"
end
```

#### Using the purchase_sms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> purchase_sms_with_http_info(service, opts)

```ruby
begin
  # Order SMS
  data, status_code, headers = api_instance.purchase_sms_with_http_info(service, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->purchase_sms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | The service or number retrieved from the &#x60;Service List&#x60; endpoint |  |
| **country** | **String** | The country in ISO format or number retrieved from the &#x60;Country List&#x60; endpoint | [optional] |
| **pool** | **String** | The pool or number retrieved from the &#x60;Pool List&#x60; endpoint (optional) | [optional] |
| **max_price** | **Float** | The max price you are willing to pay per number | [optional] |
| **pricing_option** | **Integer** | Set to 0 if you&#39;d like the cheapest numbers, set to 1 for highest success rate | [optional] |
| **quantity** | **Integer** | Quantity of numbers ordered | [optional] |
| **areacode** | **String** | Areacodes you would like to include or exclude in JSON format | [optional] |
| **exclude** | **Integer** | Set exclude to 1 if you would like to exclude all listed area codes. | [optional] |
| **create_token** | **Integer** | Optional param; set to 1 if you&#39;d like to create a token link that anyone can access. | [optional] |
| **activation_type** | **String** | Options: SMS, VOICE, FLASH. SMS will receive regular SMS, VOICE will receive phone calls that mentions the SMS and FLASH is for FLASH calls for verification. | [optional] |
| **carrier** | **Integer** | Options: 1 or 2. Pick a carrier (only works for pool Foxtrot US) | [optional] |
| **phonenumber** | **Integer** | In case you want to select a specific phone number to order | [optional] |
| **software** | **Integer** |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## request_active

> Object request_active

Active orders

The recommended endpoint to retrieve your current active orders, this will display all your orders at the same time. We recommend using this endpoint to iterate through your active orders to retrieve your SMS messages.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new

begin
  # Active orders
  result = api_instance.request_active
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_active: #{e}"
end
```

#### Using the request_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_active_with_http_info

```ruby
begin
  # Active orders
  data, status_code, headers = api_instance.request_active_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_active_with_http_info: #{e}"
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


## request_archive

> Object request_archive

Archive all orders

This API endpoint is used to archive a request in the SMS Pool system. The HTTP POST request should be sent to `https://api.smspool.net/request/archive`.  ### Request Parameters  The \\`key\\` parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - `success` (integer): A flag indicating the success of the request. A value of 0 indicates failure. - `message` (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new

begin
  # Archive all orders
  result = api_instance.request_archive
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_archive: #{e}"
end
```

#### Using the request_archive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_archive_with_http_info

```ruby
begin
  # Archive all orders
  data, status_code, headers = api_instance.request_archive_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_archive_with_http_info: #{e}"
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


## request_areacodes

> Object request_areacodes(service, country, pool)

Request available areacodes

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::SMSApi.new
service = 'service_example' # String | The service or number retrieved from the `Service List` endpoint
country = 'country_example' # String | The country in ISO format or number retrieved from the `Country List` endpoint
pool = 'pool_example' # String | The pool or number retrieved from the `Pool List` endpoint (optional)

begin
  # Request available areacodes
  result = api_instance.request_areacodes(service, country, pool)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_areacodes: #{e}"
end
```

#### Using the request_areacodes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_areacodes_with_http_info(service, country, pool)

```ruby
begin
  # Request available areacodes
  data, status_code, headers = api_instance.request_areacodes_with_http_info(service, country, pool)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_areacodes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | The service or number retrieved from the &#x60;Service List&#x60; endpoint |  |
| **country** | **String** | The country in ISO format or number retrieved from the &#x60;Country List&#x60; endpoint |  |
| **pool** | **String** | The pool or number retrieved from the &#x60;Pool List&#x60; endpoint (optional) |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## request_history

> Object request_history(opts)

Order History

This API endpoint is used to retrieve the history of SMS requests. It is an HTTP POST request that should be made to the following URL: `https://api.smspool.net/request/history`.  The request requires the \\`key\\` parameter which is your API key.  The response returned by the API is a JSON array. Each element in the array represents a historical SMS request and contains the following properties:  - `cost`: The cost of the SMS request. - `order_code`: The order code associated with the SMS request. - `phonenumber`: The phone number to which the SMS was sent. - `code`: The code associated with the SMS request. - `full_code`: The full code associated with the SMS request. - `short_name`: The short name associated with the SMS request. - `service`: The service associated with the SMS request. - `status`: The status of the SMS request. - `pool`: The pool associated with the SMS request. - `timestamp`: The timestamp of the SMS request. - `completed_on`: The completion date of the SMS request. - `expiry`: The expiry time of the SMS request. - `time_left`: The time left for the SMS request to expire.       Please note that the values for the properties are not provided in the response example, so they may be empty or null.  The last execution of this API request returned a response with a status code of 200, indicating a successful execution. The response body contained an array of SMS request history objects.  Please refer to the API documentation for more details on how to use this endpoint and interpret the response.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
opts = {
  start: 56, # Integer | Which row you'd like to start from
  length: 56, # Integer | Max length of all rows
  search: 'search_example' # String | Search query for phone number, order_code, service or country
}

begin
  # Order History
  result = api_instance.request_history(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_history: #{e}"
end
```

#### Using the request_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_history_with_http_info(opts)

```ruby
begin
  # Order History
  data, status_code, headers = api_instance.request_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->request_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Which row you&#39;d like to start from | [optional] |
| **length** | **Integer** | Max length of all rows | [optional] |
| **search** | **String** | Search query for phone number, order_code, service or country | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_activate

> Object sms_activate(orderid)

Activate SMS

This endpoint will forcefully activate an SMS to set it available for future resends, please keep in mind that these orders are NOT eligible for a refund after activating them.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
orderid = 'orderid_example' # String | 

begin
  # Activate SMS
  result = api_instance.sms_activate(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_activate: #{e}"
end
```

#### Using the sms_activate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_activate_with_http_info(orderid)

```ruby
begin
  # Activate SMS
  data, status_code, headers = api_instance.sms_activate_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_activate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderid** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_all_stock

> Object sms_all_stock(opts)

One-time stock for all services

This API endpoint is used to retrieve one-time SMS stock in the SMSPool system. The HTTP POST request should be sent to `https://api.smspool.net/sms/stock`.  ### Request Parameters  The \\`key\\` parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - `success` (integer): A flag indicating the success of the request. A value of 0 indicates failure.      - `message` (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::SMSApi.new
opts = {
  country: 'country_example', # String | Country retrieved from ''Country list\\\" endpoint (optional)
  service: 'service_example', # String | Service retrieved from ''Service list\\\" endpoint (optional)
  pool: 'pool_example' # String | Pool retrieved from ''Pool list\\\" endpoint (optional)
}

begin
  # One-time stock for all services
  result = api_instance.sms_all_stock(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_all_stock: #{e}"
end
```

#### Using the sms_all_stock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_all_stock_with_http_info(opts)

```ruby
begin
  # One-time stock for all services
  data, status_code, headers = api_instance.sms_all_stock_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_all_stock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | Country retrieved from &#39;&#39;Country list\\\&quot; endpoint (optional) | [optional] |
| **service** | **String** | Service retrieved from &#39;&#39;Service list\\\&quot; endpoint (optional) | [optional] |
| **pool** | **String** | Pool retrieved from &#39;&#39;Pool list\\\&quot; endpoint (optional) | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_cancel

> Object sms_cancel(opts)

Cancel SMS

# Cancel your SMS order  ## Responses  | **Success** | {\"success\":1} | | **Fail** | {\"success\":0} |

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
opts = {
  orderid: 'orderid_example', # String | 
  orderids: 'orderids_example', # String | 
  expiry: 56, # Integer | 
  ban: 56 # Integer | 
}

begin
  # Cancel SMS
  result = api_instance.sms_cancel(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_cancel: #{e}"
end
```

#### Using the sms_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_cancel_with_http_info(opts)

```ruby
begin
  # Cancel SMS
  data, status_code, headers = api_instance.sms_cancel_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderid** | **String** |  | [optional] |
| **orderids** | **String** |  | [optional] |
| **expiry** | **Integer** |  | [optional] |
| **ban** | **Integer** |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_cancel_all

> Object sms_cancel_all

Cancel All SMS

# Cancel your SMS order  ## Responses  | **Success** | {\"success\":1} | | **Fail** | {\"success\":0} |

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new

begin
  # Cancel All SMS
  result = api_instance.sms_cancel_all
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_cancel_all: #{e}"
end
```

#### Using the sms_cancel_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_cancel_all_with_http_info

```ruby
begin
  # Cancel All SMS
  data, status_code, headers = api_instance.sms_cancel_all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_cancel_all_with_http_info: #{e}"
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


## sms_check

> Object sms_check(orderid)

Check SMS

You may run into ratelimits while using this endpoint for high rate requests, we recommend using /request/active instead as it will list all your orders at the same time.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
orderid = 'orderid_example' # String | 

begin
  # Check SMS
  result = api_instance.sms_check(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_check: #{e}"
end
```

#### Using the sms_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_check_with_http_info(orderid)

```ruby
begin
  # Check SMS
  data, status_code, headers = api_instance.sms_check_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderid** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_check_resend

> Object sms_check_resend(orderid)

Check Resend

Check if the order can be resent or not.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
orderid = 'orderid_example' # String | 

begin
  # Check Resend
  result = api_instance.sms_check_resend(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_check_resend: #{e}"
end
```

#### Using the sms_check_resend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_check_resend_with_http_info(orderid)

```ruby
begin
  # Check Resend
  data, status_code, headers = api_instance.sms_check_resend_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_check_resend_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderid** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_clear_cache

> Object sms_clear_cache

Clear SMS Cache

# Clear your previous SMS cache to allocate previous numbers again  ## Responses  | **Success** | {\"success\":1} |   | **Fail** | {\"success\":0} |

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new

begin
  # Clear SMS Cache
  result = api_instance.sms_clear_cache
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_clear_cache: #{e}"
end
```

#### Using the sms_clear_cache_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_clear_cache_with_http_info

```ruby
begin
  # Clear SMS Cache
  data, status_code, headers = api_instance.sms_clear_cache_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_clear_cache_with_http_info: #{e}"
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


## sms_missed

> Object sms_missed(opts)

Missed SMS

Some messages arrive on a number from your one-time orders but cannot finish the order, such as Ticketmaster and Seated codes or Hark reward payouts. This returns those messages, the same ones the Missed SMS tool on the website shows. Only numbers from pool Foxtrot are covered.  The newest messages come first. `url`, `code` and `email` hold the first link, code and email address found in the message, or an empty string.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
opts = {
  phonenumber: 56, # Integer | Only return messages for this number, including the country code. Leave it out for all your numbers.
  limit: 56 # Integer | Maximum number of messages. Defaults to 100, at most 500.
}

begin
  # Missed SMS
  result = api_instance.sms_missed(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_missed: #{e}"
end
```

#### Using the sms_missed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_missed_with_http_info(opts)

```ruby
begin
  # Missed SMS
  data, status_code, headers = api_instance.sms_missed_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_missed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phonenumber** | **Integer** | Only return messages for this number, including the country code. Leave it out for all your numbers. | [optional] |
| **limit** | **Integer** | Maximum number of messages. Defaults to 100, at most 500. | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_reactivate

> Object sms_reactivate(orderid)

Reactivate SMS

This endpoint will reactivate an order, please keep in mind that these orders are NOT eligible for a refund after activating them.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
orderid = 'orderid_example' # String | 

begin
  # Reactivate SMS
  result = api_instance.sms_reactivate(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_reactivate: #{e}"
end
```

#### Using the sms_reactivate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_reactivate_with_http_info(orderid)

```ruby
begin
  # Reactivate SMS
  data, status_code, headers = api_instance.sms_reactivate_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_reactivate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderid** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_resend

> Object sms_resend(orderid)

Resend

# Resend  Resend the order. Keep in mind that some pools will have a charge per resend. You can see whether the resend will have a charge using the \"Check Resend\" endpoint  ## Responses  | **Success** | {\"success\":1,\"message\":\"Number has been requested again\",\"resend\":0} |   | **Fail** | {\"success\":0,\"message\":\"Phonenumber could not be requested again, try later again.\",\"resend\":0} |

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
orderid = 'orderid_example' # String | 

begin
  # Resend
  result = api_instance.sms_resend(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_resend: #{e}"
end
```

#### Using the sms_resend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_resend_with_http_info(orderid)

```ruby
begin
  # Resend
  data, status_code, headers = api_instance.sms_resend_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_resend_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderid** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_stock

> Object sms_stock(country, service, opts)

One-time SMS stock

This API endpoint is used to retrieve one-time SMS stock in the SMSPool system. The HTTP POST request should be sent to `https://api.smspool.net/sms/stock`.  ### Request Parameters  The \\`key\\` parameter is required for this endpoint, this is your API key.  ### Response  The response for this API endpoint will have a status code of 200, indicating a successful request. The response body will be in JSON format and will contain the following properties:  - `success` (integer): A flag indicating the success of the request. A value of 0 indicates failure.      - `message` (string): An optional message providing additional information about the request. In this case, the message is empty.       Please note that the response may contain additional properties not mentioned here, but they can be ignored for the purpose of this documentation.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::SMSApi.new
country = 'country_example' # String | Country retrieved from ''Country list\\\" endpoint
service = 'service_example' # String | Service retrieved from ''Service list\\\" endpoint
opts = {
  pool: 'pool_example', # String | Pool retrieved from ''Pool list\\\" endpoint
  include_price: 56 # Integer | 
}

begin
  # One-time SMS stock
  result = api_instance.sms_stock(country, service, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_stock: #{e}"
end
```

#### Using the sms_stock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_stock_with_http_info(country, service, opts)

```ruby
begin
  # One-time SMS stock
  data, status_code, headers = api_instance.sms_stock_with_http_info(country, service, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_stock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | Country retrieved from &#39;&#39;Country list\\\&quot; endpoint |  |
| **service** | **String** | Service retrieved from &#39;&#39;Service list\\\&quot; endpoint |  |
| **pool** | **String** | Pool retrieved from &#39;&#39;Pool list\\\&quot; endpoint | [optional] |
| **include_price** | **Integer** |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## sms_unarchive

> Object sms_unarchive(orderid)

Unarchive order

Move an archived order back to your active orders, so it shows up in **Active orders** and on your dashboard again. Use **Archive all orders** to archive them.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::SMSApi.new
orderid = 'orderid_example' # String | The order ID retrieved from /purchase/sms

begin
  # Unarchive order
  result = api_instance.sms_unarchive(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_unarchive: #{e}"
end
```

#### Using the sms_unarchive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> sms_unarchive_with_http_info(orderid)

```ruby
begin
  # Unarchive order
  data, status_code, headers = api_instance.sms_unarchive_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling SMSApi->sms_unarchive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderid** | **String** | The order ID retrieved from /purchase/sms |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

