# SMSPool::RentalApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**purchase_rental**](RentalApi.md#purchase_rental) | **POST** /purchase/rental | Order Rental |
| [**rental_auto_extend**](RentalApi.md#rental_auto_extend) | **POST** /rental/auto_extend | Enable Auto Extend Rental |
| [**rental_extend**](RentalApi.md#rental_extend) | **POST** /rental/extend | Extend Rental |
| [**rental_history**](RentalApi.md#rental_history) | **POST** /rental/history | Rental History |
| [**rental_info**](RentalApi.md#rental_info) | **POST** /rental/info | Retrieve Rental Info |
| [**rental_refund**](RentalApi.md#rental_refund) | **POST** /rental/refund | Refund Rental |
| [**rental_reset**](RentalApi.md#rental_reset) | **POST** /rental/reset | Reset Rental |
| [**rental_retrieve**](RentalApi.md#rental_retrieve) | **POST** /rental/retrieve | Retrieve Active Rentals |
| [**rental_retrieve_all**](RentalApi.md#rental_retrieve_all) | **POST** /rental/retrieve_all | Retrieve Rental IDs |
| [**rental_retrieve_history**](RentalApi.md#rental_retrieve_history) | **POST** /rental/retrieve_history | Retrieve your rentals |
| [**rental_retrieve_messages**](RentalApi.md#rental_retrieve_messages) | **POST** /rental/retrieve_messages | Retrieve Rental Messages |
| [**rental_retrieve_pricing**](RentalApi.md#rental_retrieve_pricing) | **POST** /rental/retrieve_pricing | Retrieve Rental Pricing |
| [**rental_retrieve_services**](RentalApi.md#rental_retrieve_services) | **POST** /rental/retrieve_services | Retrieve Rental Services |
| [**rental_retrieve_status**](RentalApi.md#rental_retrieve_status) | **POST** /rental/retrieve_status | Retrieve Rental Status |
| [**rental_service_price**](RentalApi.md#rental_service_price) | **POST** /rental/service_price | Retrieve rental service price |
| [**rental_stock**](RentalApi.md#rental_stock) | **POST** /rental/stock | Retrieve Rental Stock |


## purchase_rental

> Object purchase_rental(id, days, opts)

Order Rental

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
id = 56 # Integer | Rental ID retrieved from Retrieve Rental IDs
days = 56 # Integer | 
opts = {
  service_id: 56, # Integer | Optional value on which service you'd purchase the rental for
  create_token: 56, # Integer | Create a rental token which allows you to share this specific rental
  city: 'city_example', # String | 
  state: 'state_example', # String | 
  zipcode: 'zipcode_example' # String | 
}

begin
  # Order Rental
  result = api_instance.purchase_rental(id, days, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->purchase_rental: #{e}"
end
```

#### Using the purchase_rental_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> purchase_rental_with_http_info(id, days, opts)

```ruby
begin
  # Order Rental
  data, status_code, headers = api_instance.purchase_rental_with_http_info(id, days, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->purchase_rental_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental ID retrieved from Retrieve Rental IDs |  |
| **days** | **Integer** |  |  |
| **service_id** | **Integer** | Optional value on which service you&#39;d purchase the rental for | [optional] |
| **create_token** | **Integer** | Create a rental token which allows you to share this specific rental | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zipcode** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_auto_extend

> Object rental_auto_extend(rental_code)

Enable Auto Extend Rental

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
rental_code = 'rental_code_example' # String | The retrieved rental code from the `Order rental` endpoint.

begin
  # Enable Auto Extend Rental
  result = api_instance.rental_auto_extend(rental_code)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_auto_extend: #{e}"
end
```

#### Using the rental_auto_extend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_auto_extend_with_http_info(rental_code)

```ruby
begin
  # Enable Auto Extend Rental
  data, status_code, headers = api_instance.rental_auto_extend_with_http_info(rental_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_auto_extend_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_code** | **String** | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_extend

> Object rental_extend(days, rental_code)

Extend Rental

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
days = 56 # Integer | 
rental_code = 'rental_code_example' # String | The retrieved rental code from the `Order rental` endpoint.

begin
  # Extend Rental
  result = api_instance.rental_extend(days, rental_code)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_extend: #{e}"
end
```

#### Using the rental_extend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_extend_with_http_info(days, rental_code)

```ruby
begin
  # Extend Rental
  data, status_code, headers = api_instance.rental_extend_with_http_info(days, rental_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_extend_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** |  |  |
| **rental_code** | **String** | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_history

> Object rental_history

Rental History

Retrieve a history of all your rental actions.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new

begin
  # Rental History
  result = api_instance.rental_history
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_history: #{e}"
end
```

#### Using the rental_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_history_with_http_info

```ruby
begin
  # Rental History
  data, status_code, headers = api_instance.rental_history_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_history_with_http_info: #{e}"
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


## rental_info

> Object rental_info(rental_code)

Retrieve Rental Info

Retrieve rental information

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
rental_code = 'rental_code_example' # String | The retrieved rental code from the `Order rental` endpoint.

begin
  # Retrieve Rental Info
  result = api_instance.rental_info(rental_code)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_info: #{e}"
end
```

#### Using the rental_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_info_with_http_info(rental_code)

```ruby
begin
  # Retrieve Rental Info
  data, status_code, headers = api_instance.rental_info_with_http_info(rental_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_code** | **String** | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_refund

> Object rental_refund(rental_code)

Refund Rental

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
rental_code = 'rental_code_example' # String | The retrieved rental code from the `Order rental` endpoint.

begin
  # Refund Rental
  result = api_instance.rental_refund(rental_code)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_refund: #{e}"
end
```

#### Using the rental_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_refund_with_http_info(rental_code)

```ruby
begin
  # Refund Rental
  data, status_code, headers = api_instance.rental_refund_with_http_info(rental_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_code** | **String** | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_reset

> Object rental_reset(rental_code)

Reset Rental

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
rental_code = 'rental_code_example' # String | The retrieved rental code from the `Order rental` endpoint.

begin
  # Reset Rental
  result = api_instance.rental_reset(rental_code)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_reset: #{e}"
end
```

#### Using the rental_reset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_reset_with_http_info(rental_code)

```ruby
begin
  # Reset Rental
  data, status_code, headers = api_instance.rental_reset_with_http_info(rental_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_reset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_code** | **String** | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_retrieve

> Object rental_retrieve

Retrieve Active Rentals

Retrieve a history of all your rental actions.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new

begin
  # Retrieve Active Rentals
  result = api_instance.rental_retrieve
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve: #{e}"
end
```

#### Using the rental_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_retrieve_with_http_info

```ruby
begin
  # Retrieve Active Rentals
  data, status_code, headers = api_instance.rental_retrieve_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_with_http_info: #{e}"
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


## rental_retrieve_all

> Object rental_retrieve_all(type)

Retrieve Rental IDs

Retrieve available rental products. Each listing includes `is_refundable` (`0` or `1`), `refund_within` (hours after purchase a refund is allowed; `0` when not refundable), and `refund_min_days` (minimum duration that is eligible for a refund; `0` when there is no duration floor or the rental is never refundable). Refunds also require that no messages have been received.

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::RentalApi.new
type = 56 # Integer | Choose whether the rental is extendable or not with a 0 or 1

begin
  # Retrieve Rental IDs
  result = api_instance.rental_retrieve_all(type)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_all: #{e}"
end
```

#### Using the rental_retrieve_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_retrieve_all_with_http_info(type)

```ruby
begin
  # Retrieve Rental IDs
  data, status_code, headers = api_instance.rental_retrieve_all_with_http_info(type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **Integer** | Choose whether the rental is extendable or not with a 0 or 1 |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_retrieve_history

> Object rental_retrieve_history

Retrieve your rentals

List every rental on your account that was not refunded, including expired ones. For the actions taken on your rentals (activations, extensions, refunds) use **Rental History** instead.  - `rental`: the rental ID from **Retrieve Rental IDs** - `rental_code`: use it with the other rental endpoints, such as **Retrieve Rental Messages** - `expiration_date`: Unix timestamp - `source`: the pool the number comes from - `state`: the US state of the number, or `Unknown`

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new

begin
  # Retrieve your rentals
  result = api_instance.rental_retrieve_history
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_history: #{e}"
end
```

#### Using the rental_retrieve_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_retrieve_history_with_http_info

```ruby
begin
  # Retrieve your rentals
  data, status_code, headers = api_instance.rental_retrieve_history_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_history_with_http_info: #{e}"
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


## rental_retrieve_messages

> Object rental_retrieve_messages(rental_code)

Retrieve Rental Messages

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
rental_code = 'rental_code_example' # String | The retrieved rental code from the `Order rental` endpoint.

begin
  # Retrieve Rental Messages
  result = api_instance.rental_retrieve_messages(rental_code)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_messages: #{e}"
end
```

#### Using the rental_retrieve_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_retrieve_messages_with_http_info(rental_code)

```ruby
begin
  # Retrieve Rental Messages
  data, status_code, headers = api_instance.rental_retrieve_messages_with_http_info(rental_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_code** | **String** | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_retrieve_pricing

> Object rental_retrieve_pricing(id, opts)

Retrieve Rental Pricing

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::RentalApi.new
id = 56 # Integer | The rental ID retrieved from `Retrieve Rental IDs`
opts = {
  service: 'service_example' # String | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint
}

begin
  # Retrieve Rental Pricing
  result = api_instance.rental_retrieve_pricing(id, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_pricing: #{e}"
end
```

#### Using the rental_retrieve_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_retrieve_pricing_with_http_info(id, opts)

```ruby
begin
  # Retrieve Rental Pricing
  data, status_code, headers = api_instance.rental_retrieve_pricing_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; |  |
| **service** | **String** | Service name or service ID which can be retrieved at the /service/retrieve_all endpoint | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_retrieve_services

> Object rental_retrieve_services(opts)

Retrieve Rental Services

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::RentalApi.new
opts = {
  rental: 56 # Integer | The rental ID retrieved from `Retrieve Rental IDs`
}

begin
  # Retrieve Rental Services
  result = api_instance.rental_retrieve_services(opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_services: #{e}"
end
```

#### Using the rental_retrieve_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_retrieve_services_with_http_info(opts)

```ruby
begin
  # Retrieve Rental Services
  data, status_code, headers = api_instance.rental_retrieve_services_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental** | **Integer** | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_retrieve_status

> Object rental_retrieve_status(rental_code)

Retrieve Rental Status

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
rental_code = 'rental_code_example' # String | The retrieved rental code from the `Order rental` endpoint.

begin
  # Retrieve Rental Status
  result = api_instance.rental_retrieve_status(rental_code)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_status: #{e}"
end
```

#### Using the rental_retrieve_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_retrieve_status_with_http_info(rental_code)

```ruby
begin
  # Retrieve Rental Status
  data, status_code, headers = api_instance.rental_retrieve_status_with_http_info(rental_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_retrieve_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_code** | **String** | The retrieved rental code from the &#x60;Order rental&#x60; endpoint. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_service_price

> Object rental_service_price(id, service_id)

Retrieve rental service price

Some rentals are bound to a single service. This returns the price of a rental for that service, with the custom pricing on your account applied.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::RentalApi.new
id = 56 # Integer | The rental ID retrieved from `Retrieve Rental IDs`
service_id = 56 # Integer | The service ID retrieved from `Retrieve Rental Services`

begin
  # Retrieve rental service price
  result = api_instance.rental_service_price(id, service_id)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_service_price: #{e}"
end
```

#### Using the rental_service_price_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_service_price_with_http_info(id, service_id)

```ruby
begin
  # Retrieve rental service price
  data, status_code, headers = api_instance.rental_service_price_with_http_info(id, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_service_price_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; |  |
| **service_id** | **Integer** | The service ID retrieved from &#x60;Retrieve Rental Services&#x60; |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## rental_stock

> Object rental_stock(id, days, opts)

Retrieve Rental Stock

### Examples

```ruby
require 'time'
require 'smspool'

api_instance = SMSPool::RentalApi.new
id = 56 # Integer | The rental ID retrieved from `Retrieve Rental IDs`
days = 56 # Integer | 
opts = {
  service_id: 56 # Integer | 
}

begin
  # Retrieve Rental Stock
  result = api_instance.rental_stock(id, days, opts)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_stock: #{e}"
end
```

#### Using the rental_stock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rental_stock_with_http_info(id, days, opts)

```ruby
begin
  # Retrieve Rental Stock
  data, status_code, headers = api_instance.rental_stock_with_http_info(id, days, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling RentalApi->rental_stock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The rental ID retrieved from &#x60;Retrieve Rental IDs&#x60; |  |
| **days** | **Integer** |  |  |
| **service_id** | **Integer** |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

