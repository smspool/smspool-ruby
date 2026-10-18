# SMSPool::CarrierApi

All URIs are relative to *https://api.smspool.net*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**carrier_paid_lookup**](CarrierApi.md#carrier_paid_lookup) | **POST** /carrier/paid_lookup | Lookup |


## carrier_paid_lookup

> Object carrier_paid_lookup(phonenumber)

Lookup

This API endpoint is used to perform a paid lookup for a phone number. The request is sent via an HTTP POST method to the following URL: `https://api.smspool.net/carrier/paid_lookup`  ``` json {   \"success\": true,   \"phonenumber\": \"\",   \"country\": \"\",   \"carrier\": \"\",   \"carrier_type\": \"\",   \"charge\": 0 }   ```  The `success` field indicates whether the lookup was successful or not. The `phonenumber` field represents the phone number for which the lookup was performed. The `country` field indicates the country associated with the phone number. The `carrier` field provides the name of the carrier associated with the phone number. The `carrier_type` field specifies the type of carrier. The `charge` field represents the cost charged for the lookup operation.  Please note that specific values for `phonenumber`, `country`, `carrier`, and `carrier_type` were not provided in the response, and the `charge` field had a value of 0.  To use this endpoint, send an HTTP POST request to the provided URL with the necessary parameters. The request should include the phone number for which you want to perform the lookup. The response will contain the details of the carrier and associated information.  Make sure to handle any errors that may occur during the lookup process and check the `success` field in the response to determine the outcome of the operation.

### Examples

```ruby
require 'time'
require 'smspool'
# setup authorization
SMSPool.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SMSPool::CarrierApi.new
phonenumber = 56 # Integer | 

begin
  # Lookup
  result = api_instance.carrier_paid_lookup(phonenumber)
  p result
rescue SMSPool::ApiError => e
  puts "Error when calling CarrierApi->carrier_paid_lookup: #{e}"
end
```

#### Using the carrier_paid_lookup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> carrier_paid_lookup_with_http_info(phonenumber)

```ruby
begin
  # Lookup
  data, status_code, headers = api_instance.carrier_paid_lookup_with_http_info(phonenumber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue SMSPool::ApiError => e
  puts "Error when calling CarrierApi->carrier_paid_lookup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phonenumber** | **Integer** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

