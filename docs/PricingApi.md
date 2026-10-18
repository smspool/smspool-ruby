# SMSPool::PricingApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**request_price**](PricingApi.md#request_price) | **POST** /request/price | Retrieve specific price &amp; Success Rate |
| [**request_pricing**](PricingApi.md#request_pricing) | **POST** /request/pricing | Retrieve all pricing |


## request_price

> Object request_price(country, service, opts)

Retrieve specific price & Success Rate

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::PricingApi.new
country = 'country_example' # String | Country retrieved from ''Country list\\\" endpoint
service = 'service_example' # String | Service retrieved from ''Service list\\\" endpoint
opts = {
  pool: 'pool_example', # String | Pool retrieved from ''Pool list\\\" endpoint
  skip_success_rate: 'skip_success_rate_example' # String | 
}

begin
  # Retrieve specific price & Success Rate
  result = api_instance.request_price(country, service, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling PricingApi->request_price: #{e}"
end
```

#### Using the request_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_price_with_http_info(country, service, opts)

```ruby
begin
  # Retrieve specific price & Success Rate
  data, status_code, headers = api_instance.request_price_with_http_info(country, service, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling PricingApi->request_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | Country retrieved from &#39;&#39;Country list\\\&quot; endpoint |  |
| **service** | **String** | Service retrieved from &#39;&#39;Service list\\\&quot; endpoint |  |
| **pool** | **String** | Pool retrieved from &#39;&#39;Pool list\\\&quot; endpoint | [optional] |
| **skip_success_rate** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## request_pricing

> Object request_pricing(opts)

Retrieve all pricing

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::PricingApi.new
opts = {
  country: 'country_example', # String | Optional parameter to request services per country
  service: 'service_example', # String | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
  pool: 'pool_example', # String | 
  max_price: 8.14 # Float | 
}

begin
  # Retrieve all pricing
  result = api_instance.request_pricing(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling PricingApi->request_pricing: #{e}"
end
```

#### Using the request_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_pricing_with_http_info(opts)

```ruby
begin
  # Retrieve all pricing
  data, status_code, headers = api_instance.request_pricing_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling PricingApi->request_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | Optional parameter to request services per country | [optional] |
| **service** | **String** | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [optional] |
| **pool** | **String** |  | [optional] |
| **max_price** | **Float** |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

