require "smspool"
require "json"

SMSPool.configure { |c| c.host = "api.smspool.net"; c.scheme = "https" }
api = SMSPool::InformationApi.new
countries = api.country_retrieve_all
raise "no countries" unless countries.is_a?(Array) && !countries.empty?
puts "countries: #{countries.size} #{countries.first.to_json}"
rates = api.request_success_rate("1")
raise "no success rates" if rates.nil?
puts "success_rate (form POST): #{rates.to_json[0, 80]}"

authed_config = SMSPool::Configuration.new
authed_config.host = "api.smspool.net"
authed_config.scheme = "https"
authed_config.access_token = "0" * 32
begin
  SMSPool::InformationApi.new(SMSPool::ApiClient.new(authed_config)).request_balance
  raise "expected an auth error"
rescue SMSPool::ApiError => e
  raise unless [401, 403].include?(e.code)
  puts "bad key -> #{e.code} #{e.response_body.to_s[0, 80]}"
end
puts "RUBY OK"
