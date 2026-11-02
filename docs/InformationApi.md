# SMSPool::InformationApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**country_retrieve_all**](InformationApi.md#country_retrieve_all) | **GET** /country/retrieve_all | Country list |
| [**pool_retrieve_all**](InformationApi.md#pool_retrieve_all) | **POST** /pool/retrieve_all | Pool list |
| [**pool_retrieve_valid**](InformationApi.md#pool_retrieve_valid) | **POST** /pool/retrieve_valid | Suggested Pools |
| [**request_balance**](InformationApi.md#request_balance) | **POST** /request/balance | Balance |
| [**request_history_search**](InformationApi.md#request_history_search) | **POST** /request/history_search | History search |
| [**request_success_rate**](InformationApi.md#request_success_rate) | **POST** /request/success_rate | Retrieve country success rates per service |
| [**request_suggested_countries**](InformationApi.md#request_suggested_countries) | **POST** /request/suggested_countries | Suggested Countries |
| [**service_retrieve_all**](InformationApi.md#service_retrieve_all) | **GET** /service/retrieve_all | Service list |


## country_retrieve_all

> Object country_retrieve_all(opts)

Country list

This API endpoint is used to retrieve the full country list for SMSPool requests. It sends an HTTP GET request to the URL `https://api.smspool.net/country/retrieve_all`.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::InformationApi.new
opts = {
  show_all: 'show_all_example' # String | 
}

begin
  # Country list
  result = api_instance.country_retrieve_all(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->country_retrieve_all: #{e}"
end
```

#### Using the country_retrieve_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> country_retrieve_all_with_http_info(opts)

```ruby
begin
  # Country list
  data, status_code, headers = api_instance.country_retrieve_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->country_retrieve_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **show_all** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pool_retrieve_all

> Object pool_retrieve_all

Pool list

This API endpoint is used to retrieve a list of our active pools for SMSPool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/pool/retrieve_all`.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::InformationApi.new

begin
  # Pool list
  result = api_instance.pool_retrieve_all
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->pool_retrieve_all: #{e}"
end
```

#### Using the pool_retrieve_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pool_retrieve_all_with_http_info

```ruby
begin
  # Pool list
  data, status_code, headers = api_instance.pool_retrieve_all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->pool_retrieve_all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pool_retrieve_valid

> Object pool_retrieve_valid(service, country, opts)

Suggested Pools

This API endpoint is used to retrieve suggested pools for SMSPool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/pool/retrieve_valid`.  Please use either the service ID, or the service name as service param.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::InformationApi.new
service = 'service_example' # String | Service retrieved from ''Service list\\\" endpoint
country = 'country_example' # String | Country retrieved from ''Country list\\\" endpoint
opts = {
  web: 'web_example', # String | Return array format
  include_stock: 'include_stock_example' # String | 
}

begin
  # Suggested Pools
  result = api_instance.pool_retrieve_valid(service, country, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->pool_retrieve_valid: #{e}"
end
```

#### Using the pool_retrieve_valid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pool_retrieve_valid_with_http_info(service, country, opts)

```ruby
begin
  # Suggested Pools
  data, status_code, headers = api_instance.pool_retrieve_valid_with_http_info(service, country, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->pool_retrieve_valid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service retrieved from &#39;&#39;Service list\\\&quot; endpoint |  |
| **country** | **String** | Country retrieved from &#39;&#39;Country list\\\&quot; endpoint |  |
| **web** | **String** | Return array format | [optional] |
| **include_stock** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## request_balance

> Object request_balance

Balance

This HTTP POST request is used to retrieve the balance for a specific SMSPool. The request is sent to the URL `https://api.smspool.net/request/balance`.  ### Request Parameters  This request require the \\`key\\` param which is your API key  ### Response  The response to this request will have a status code of 200 if the request is successful. The response body will be in JSON format and will include a `balance` field. However, the last execution of this request returned an empty string for the `balance` field.  Please note that the actual value of the `balance` field may vary depending on the user and its configuration.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::InformationApi.new

begin
  # Balance
  result = api_instance.request_balance
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_balance: #{e}"
end
```

#### Using the request_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_balance_with_http_info

```ruby
begin
  # Balance
  data, status_code, headers = api_instance.request_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_balance_with_http_info: #{e}"
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


## request_history_search

> Object request_history_search(search, opts)

History search

_Not documented yet: the parameters below come straight from the code._

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::InformationApi.new
search = 'search_example' # String | 
opts = {
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # History search
  result = api_instance.request_history_search(search, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_history_search: #{e}"
end
```

#### Using the request_history_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_history_search_with_http_info(search, opts)

```ruby
begin
  # History search
  data, status_code, headers = api_instance.request_history_search_with_http_info(search, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_history_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** |  |  |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## request_success_rate

> Object request_success_rate(service, opts)

Retrieve country success rates per service

This API endpoint is used to retrieve success per country for SMSPool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/request/success_rate`.  Please use either the service ID, or the service name as service param.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::InformationApi.new
service = 'service_example' # String | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
opts = {
  country: 'country_example' # String | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint
}

begin
  # Retrieve country success rates per service
  result = api_instance.request_success_rate(service, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_success_rate: #{e}"
end
```

#### Using the request_success_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_success_rate_with_http_info(service, opts)

```ruby
begin
  # Retrieve country success rates per service
  data, status_code, headers = api_instance.request_success_rate_with_http_info(service, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_success_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint |  |
| **country** | **String** | Country name or country ID which can be retrieved at the /country/retrieve_all endpoint | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## request_suggested_countries

> Object request_suggested_countries(service)

Suggested Countries

This API endpoint is used to retrieve suggested countries for SMS pool requests. It sends an HTTP POST request to the URL `https://api.smspool.net/request/suggested_countries`.  Please use either the service ID, or the service name as service param.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::InformationApi.new
service = 'service_example' # String | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint

begin
  # Suggested Countries
  result = api_instance.request_suggested_countries(service)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_suggested_countries: #{e}"
end
```

#### Using the request_suggested_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> request_suggested_countries_with_http_info(service)

```ruby
begin
  # Suggested Countries
  data, status_code, headers = api_instance.request_suggested_countries_with_http_info(service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->request_suggested_countries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## service_retrieve_all

> Object service_retrieve_all(opts)

Service list

This API endpoint is used to retrieve the full service list for SMSPool requests. It sends an HTTP GET request to the URL `https://api.smspool.net/service/retrieve_all`.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::InformationApi.new
opts = {
  country: '1' # String | 
}

begin
  # Service list
  result = api_instance.service_retrieve_all(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->service_retrieve_all: #{e}"
end
```

#### Using the service_retrieve_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> service_retrieve_all_with_http_info(opts)

```ruby
begin
  # Service list
  data, status_code, headers = api_instance.service_retrieve_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling InformationApi->service_retrieve_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

