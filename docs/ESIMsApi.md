# SMSPool::ESIMsApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**esim_delete**](ESIMsApi.md#esim_delete) | **POST** /esim/delete | Delete eSIM |
| [**esim_history**](ESIMsApi.md#esim_history) | **POST** /esim/history | View eSIM history |
| [**esim_label_update**](ESIMsApi.md#esim_label_update) | **POST** /esim/label/update | Update eSIM label |
| [**esim_plans**](ESIMsApi.md#esim_plans) | **POST** /esim/plans | View eSIM plans per country |
| [**esim_pricing**](ESIMsApi.md#esim_pricing) | **POST** /esim/pricing | View eSIM countries |
| [**esim_profile**](ESIMsApi.md#esim_profile) | **POST** /esim/profile | View eSIM profile |
| [**esim_purchase**](ESIMsApi.md#esim_purchase) | **POST** /esim/purchase | Purchase eSIM |
| [**esim_topup**](ESIMsApi.md#esim_topup) | **POST** /esim/topup | Top up eSIM |
| [**esim_topup_plans**](ESIMsApi.md#esim_topup_plans) | **POST** /esim/topup_plans | Top Up Plans |


## esim_delete

> Object esim_delete(transaction_id)

Delete eSIM

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
transaction_id = 'transaction_id_example' # String | transactionId retrieved from /esim/purchase

begin
  # Delete eSIM
  result = api_instance.esim_delete(transaction_id)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_delete: #{e}"
end
```

#### Using the esim_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_delete_with_http_info(transaction_id)

```ruby
begin
  # Delete eSIM
  data, status_code, headers = api_instance.esim_delete_with_http_info(transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | transactionId retrieved from /esim/purchase |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_history

> Object esim_history(opts)

View eSIM history

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
opts = {
  start: 56, # Integer | Start page
  length: 56, # Integer | Amount of rows per page
  search: 'search_example' # String | Alphanumeric search
}

begin
  # View eSIM history
  result = api_instance.esim_history(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_history: #{e}"
end
```

#### Using the esim_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_history_with_http_info(opts)

```ruby
begin
  # View eSIM history
  data, status_code, headers = api_instance.esim_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Start page | [optional] |
| **length** | **Integer** | Amount of rows per page | [optional] |
| **search** | **String** | Alphanumeric search | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_label_update

> Object esim_label_update(transaction_id, opts)

Update eSIM label

Set or clear the label of one of your eSIMs. The label is returned as `label` by **View eSIM history**, so you can use it to tell your eSIMs apart.  A label can be up to 30 characters long and may only contain letters, numbers and spaces. Leave `label` out, or send it empty, to remove the label.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
transaction_id = 'transaction_id_example' # String | transactionId retrieved from /esim/purchase
opts = {
  label: 'label_example' # String | The new label: letters, numbers and spaces, at most 30 characters. Empty or left out removes the label.
}

begin
  # Update eSIM label
  result = api_instance.esim_label_update(transaction_id, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_label_update: #{e}"
end
```

#### Using the esim_label_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_label_update_with_http_info(transaction_id, opts)

```ruby
begin
  # Update eSIM label
  data, status_code, headers = api_instance.esim_label_update_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_label_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | transactionId retrieved from /esim/purchase |  |
| **label** | **String** | The new label: letters, numbers and spaces, at most 30 characters. Empty or left out removes the label. | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_plans

> Object esim_plans(country)

View eSIM plans per country

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
country = 'country_example' # String | ISO 3166 country code

begin
  # View eSIM plans per country
  result = api_instance.esim_plans(country)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_plans: #{e}"
end
```

#### Using the esim_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_plans_with_http_info(country)

```ruby
begin
  # View eSIM plans per country
  data, status_code, headers = api_instance.esim_plans_with_http_info(country)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO 3166 country code |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_pricing

> Object esim_pricing(opts)

View eSIM countries

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
opts = {
  start: 56, # Integer | Start page
  length: 56, # Integer | Amount of rows per page
  search: 'search_example' # String | Search query for country
}

begin
  # View eSIM countries
  result = api_instance.esim_pricing(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_pricing: #{e}"
end
```

#### Using the esim_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_pricing_with_http_info(opts)

```ruby
begin
  # View eSIM countries
  data, status_code, headers = api_instance.esim_pricing_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Start page | [optional] |
| **length** | **Integer** | Amount of rows per page | [optional] |
| **search** | **String** | Search query for country | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_profile

> Object esim_profile(opts)

View eSIM profile

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
opts = {
  transaction_id: 'transaction_id_example' # String | transactionId retrieved from /esim/purchase
}

begin
  # View eSIM profile
  result = api_instance.esim_profile(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_profile: #{e}"
end
```

#### Using the esim_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_profile_with_http_info(opts)

```ruby
begin
  # View eSIM profile
  data, status_code, headers = api_instance.esim_profile_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | transactionId retrieved from /esim/purchase | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_purchase

> Object esim_purchase(plan)

Purchase eSIM

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
plan = 56 # Integer | The plan ID which is obtained from /esim/pricing

begin
  # Purchase eSIM
  result = api_instance.esim_purchase(plan)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_purchase: #{e}"
end
```

#### Using the esim_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_purchase_with_http_info(plan)

```ruby
begin
  # Purchase eSIM
  data, status_code, headers = api_instance.esim_purchase_with_http_info(plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_purchase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | **Integer** | The plan ID which is obtained from /esim/pricing |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_topup

> Object esim_topup(transaction_id, plan)

Top up eSIM

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::ESIMsApi.new
transaction_id = 'transaction_id_example' # String | Transaction ID retrieved from eSIM history
plan = 56 # Integer | Topup plan retrieved from \\\"Top Up Plans\\\"

begin
  # Top up eSIM
  result = api_instance.esim_topup(transaction_id, plan)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_topup: #{e}"
end
```

#### Using the esim_topup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_topup_with_http_info(transaction_id, plan)

```ruby
begin
  # Top up eSIM
  data, status_code, headers = api_instance.esim_topup_with_http_info(transaction_id, plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_topup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | Transaction ID retrieved from eSIM history |  |
| **plan** | **Integer** | Topup plan retrieved from \\\&quot;Top Up Plans\\\&quot; |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## esim_topup_plans

> Object esim_topup_plans(plan)

Top Up Plans

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::ESIMsApi.new
plan = 56 # Integer | `plan` retrieved from eSIM history

begin
  # Top Up Plans
  result = api_instance.esim_topup_plans(plan)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_topup_plans: #{e}"
end
```

#### Using the esim_topup_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> esim_topup_plans_with_http_info(plan)

```ruby
begin
  # Top Up Plans
  data, status_code, headers = api_instance.esim_topup_plans_with_http_info(plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling ESIMsApi->esim_topup_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | **Integer** | &#x60;plan&#x60; retrieved from eSIM history |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

