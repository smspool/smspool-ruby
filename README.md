# SMSPool Ruby SDK

Official Ruby client for the [SMSPool API](https://api.smspool.net/docs): one-time SMS
verification numbers, rentals, pre-orders, eSIMs and more.

Package: [`smspool`](https://rubygems.org/gems/smspool) on RubyGems.

## Install

```bash
gem install smspool
```

## Quick start

Get your API key from [your settings page](https://www.smspool.net/my/settings).

```ruby
require "smspool"

SMSPool.configure { |c| c.access_token = "YOUR_API_KEY" }
p SMSPool::InformationApi.new.request_balance
countries = SMSPool::InformationApi.new.country_retrieve_all
order = SMSPool::SMSApi.new.purchase_sms("1", country: "US")
```

Errors (HTTP 4xx/5xx) raise `SMSPool::ApiError`, with `code` and `response_body`.

## Calling endpoints

Every endpoint in the [API reference](https://api.smspool.net/docs) is a method named after
its path, on the class for its section: `/sms/check` is `sms_check` on `SMSApi`. Endpoints that need
your API key send it as a bearer token.

Responses are returned as decoded JSON exactly as the API sends them: many endpoints answer
`200` with `"success": 0` and a `message` when a request is refused, so check `success`.

- Generated reference for every method and parameter: [`docs/`](docs/)
- API reference with examples: https://api.smspool.net/docs

## How this SDK is made

The code is generated from the API's OpenAPI spec
([openapi.json](https://api.smspool.net/openapi.json)) with
[OpenAPI Generator](https://openapi-generator.tech). Do not edit generated files by hand:
a workflow regenerates them every week and opens a pull request when the API changed.
Hand-written files are listed in `.openapi-generator-ignore`.

## Releasing (maintainers)

1. Set the new version in `openapi-generator.yaml` (`gemVersion`).
2. Run `scripts/generate.sh` (needs Docker) and `scripts/smoke.sh`, then commit.
3. Tag and push: `git tag vX.Y.Z && git push origin vX.Y.Z`.

The Release workflow checks the tag against the version, runs the smoke test and publishes.
RubyGems uses trusted publishing (no token): the gem's publisher is this repo's
`release.yml` workflow in the `release` environment.

## License

MIT
