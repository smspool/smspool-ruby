# SMSPool::PreordersApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**preorder_cancel**](PreordersApi.md#preorder_cancel) | **POST** /preorder/cancel | Cancel |
| [**preorder_check**](PreordersApi.md#preorder_check) | **POST** /preorder/check | Check |
| [**preorder_create**](PreordersApi.md#preorder_create) | **POST** /preorder/create | Create |
| [**preorder_price**](PreordersApi.md#preorder_price) | **POST** /preorder/price | Price |
| [**preorder_retrieve**](PreordersApi.md#preorder_retrieve) | **POST** /preorder/retrieve | Retrieve |


## preorder_cancel

> Object preorder_cancel(orderid)

Cancel

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::PreordersApi.new
orderid = 'orderid_example' # String | 

begin
  # Cancel
  result = api_instance.preorder_cancel(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_cancel: #{e}"
end
```

#### Using the preorder_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> preorder_cancel_with_http_info(orderid)

```ruby
begin
  # Cancel
  data, status_code, headers = api_instance.preorder_cancel_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_cancel_with_http_info: #{e}"
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


## preorder_check

> Object preorder_check(orderid)

Check

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::PreordersApi.new
orderid = 'orderid_example' # String | 

begin
  # Check
  result = api_instance.preorder_check(orderid)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_check: #{e}"
end
```

#### Using the preorder_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> preorder_check_with_http_info(orderid)

```ruby
begin
  # Check
  data, status_code, headers = api_instance.preorder_check_with_http_info(orderid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_check_with_http_info: #{e}"
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


## preorder_create

> Object preorder_create(service, country, pool, max_price, opts)

Create

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::PreordersApi.new
service = 'service_example' # String | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
country = 'country_example' # String | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint
pool = 'pool_example' # String | 
max_price = 8.14 # Float | 
opts = {
  areacode: 'areacode_example' # String | 
}

begin
  # Create
  result = api_instance.preorder_create(service, country, pool, max_price, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_create: #{e}"
end
```

#### Using the preorder_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> preorder_create_with_http_info(service, country, pool, max_price, opts)

```ruby
begin
  # Create
  data, status_code, headers = api_instance.preorder_create_with_http_info(service, country, pool, max_price, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint |  |
| **country** | **String** | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint |  |
| **pool** | **String** |  |  |
| **max_price** | **Float** |  |  |
| **areacode** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## preorder_price

> Object preorder_price(service, country, pool)

Price

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::PreordersApi.new
service = 'service_example' # String | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
country = 'country_example' # String | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint
pool = 'pool_example' # String | 

begin
  # Price
  result = api_instance.preorder_price(service, country, pool)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_price: #{e}"
end
```

#### Using the preorder_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> preorder_price_with_http_info(service, country, pool)

```ruby
begin
  # Price
  data, status_code, headers = api_instance.preorder_price_with_http_info(service, country, pool)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint |  |
| **country** | **String** | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint |  |
| **pool** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## preorder_retrieve

> Object preorder_retrieve

Retrieve

This API endpoint allows you to retrieve preorders from the SMS Pool system. It is an HTTP POST request sent to the URL `https://api.smspool.net/preorder/retrieve`.  ### Request Parameters  This endpoint requires the \\`key\\` parameter which is your API key.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::PreordersApi.new

begin
  # Retrieve
  result = api_instance.preorder_retrieve
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_retrieve: #{e}"
end
```

#### Using the preorder_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> preorder_retrieve_with_http_info

```ruby
begin
  # Retrieve
  data, status_code, headers = api_instance.preorder_retrieve_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling PreordersApi->preorder_retrieve_with_http_info: #{e}"
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

