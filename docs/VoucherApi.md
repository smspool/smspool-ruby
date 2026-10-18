# SMSPool::VoucherApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**voucher_bulk_generate**](VoucherApi.md#voucher_bulk_generate) | **POST** /voucher/bulk_generate | Bulk generate vouchers |
| [**voucher_delete**](VoucherApi.md#voucher_delete) | **POST** /voucher/delete | Delete voucher |
| [**voucher_generate**](VoucherApi.md#voucher_generate) | **POST** /voucher/generate | Generate voucher |
| [**voucher_retrieve**](VoucherApi.md#voucher_retrieve) | **POST** /voucher/retrieve | Retrieve vouchers |


## voucher_bulk_generate

> Object voucher_bulk_generate(amount, quantity)

Bulk generate vouchers

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::VoucherApi.new
amount = 8.14 # Float | 
quantity = 56 # Integer | 

begin
  # Bulk generate vouchers
  result = api_instance.voucher_bulk_generate(amount, quantity)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_bulk_generate: #{e}"
end
```

#### Using the voucher_bulk_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> voucher_bulk_generate_with_http_info(amount, quantity)

```ruby
begin
  # Bulk generate vouchers
  data, status_code, headers = api_instance.voucher_bulk_generate_with_http_info(amount, quantity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_bulk_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  |  |
| **quantity** | **Integer** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## voucher_delete

> Object voucher_delete(voucher)

Delete voucher

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::VoucherApi.new
voucher = 'voucher_example' # String | Your voucher code

begin
  # Delete voucher
  result = api_instance.voucher_delete(voucher)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_delete: #{e}"
end
```

#### Using the voucher_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> voucher_delete_with_http_info(voucher)

```ruby
begin
  # Delete voucher
  data, status_code, headers = api_instance.voucher_delete_with_http_info(voucher)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher** | **String** | Your voucher code |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## voucher_generate

> Object voucher_generate(amount)

Generate voucher

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::VoucherApi.new
amount = 8.14 # Float | The amount per promocode

begin
  # Generate voucher
  result = api_instance.voucher_generate(amount)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_generate: #{e}"
end
```

#### Using the voucher_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> voucher_generate_with_http_info(amount)

```ruby
begin
  # Generate voucher
  data, status_code, headers = api_instance.voucher_generate_with_http_info(amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount per promocode |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## voucher_retrieve

> Object voucher_retrieve

Retrieve vouchers

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::VoucherApi.new

begin
  # Retrieve vouchers
  result = api_instance.voucher_retrieve
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_retrieve: #{e}"
end
```

#### Using the voucher_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> voucher_retrieve_with_http_info

```ruby
begin
  # Retrieve vouchers
  data, status_code, headers = api_instance.voucher_retrieve_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling VoucherApi->voucher_retrieve_with_http_info: #{e}"
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

