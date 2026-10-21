# EvalGate Ruby SDK

Official EvalGate REST client with generated operation methods, model validation,
and RBS signatures from EvalGate's verified public OpenAPI contract.
Product and package homepage: https://evalgate.com.

Requires Ruby 3.2 or newer. Only Ruby standard/default libraries are used.

Install the reviewed [v3.15.0 source](https://github.com/evalgate/evalgate-ruby/tree/v3.15.0)
by building the gem from that release tag:

```sh
git clone --branch v3.15.0 --depth 1 https://github.com/evalgate/evalgate-ruby.git
cd evalgate-ruby
gem build evalgate.gemspec
gem install --local --no-document evalgate-sdk-3.15.0.gem
```

RubyGems publication is pending the account owner's trusted publisher setup.
After RubyGems publication, the registry installation command will be:

```sh
gem install evalgate-sdk --version 3.15.0
```

```ruby
require "evalgate"

client = EvalGate::Client.new(
  api_key: ENV.fetch("EVALGATE_API_KEY"),
  organization_id: ENV.fetch("EVALGATE_ORGANIZATION_ID")
)
response = client.get_evaluations(query: { limit: 10 })
puts response.headers["ratelimit"]

body = EvalGate::Models::PostApiEvaluationsRequest.new(name: "Release checks")
client.post_evaluations(body: body, idempotency_key: "release-checks-001")
```

The read requires an `eval:read` scoped API key; the example mutation requires
`eval:write`. The service enforces scopes and organization authorization. Use
human-approved credentials and a disposable local EvalGate instance for writes
while testing. Configure `base_url:` for that instance.

Every operation in `EvalGate::OPERATIONS` has a generated snake_case method.
Pass `path:`, `query:`, and declared `headers:` maps; required and unknown
parameters are checked before sending a request. JSON bodies may be generated
models or hashes. Object models validate documented required fields and primitive
types, and support `model.name`, `model[:name]`, and `model.to_h`. Unions without
one concrete Ruby class retain ordinary JSON values. Access fields named after
inherited Ruby methods, such as `method`, `methods`, or `hash`, with `model[:method]`.
Their JSON fields remain available without replacing Ruby's built-in methods.
Models preserve nullable collections: pass `nil` for JSON `null`, `[]` or `{}`
for explicit empty collections, and leave out an optional keyword to omit it.
Nonnullable array/map fields reject `nil`; their RBS types follow the same schema.
The `sig/` directory contains RBS 3+ signatures; `generation.json` pins the
contract digest and operation inventory.

`response.data`, `response.status`, and `response.headers` preserve successful
responses. `EvalGate::APIError` exposes `status`, `code`, `request_id`, `headers`,
and `data`. On a 429, inspect `error.headers["retry-after"]` and the live
`ratelimit` / `ratelimit-policy` values before rescheduling. The client does not
retry requests automatically or follow redirects. A mutation's `idempotency_key:`
should identify the same logical operation across retries.

```ruby
client.paginate("get_evaluations", query: { limit: 50 }, max_pages: 100).each do |page|
  puts page.data
end
```

The paginator follows the generated cursor/offset/page contract, rejects repeated
cursors and no-progress pages, and raises when `max_pages` is exhausted rather
than silently truncating. Each HTTP operation defaults to a 30 second timeout;
set `timeout:` at client creation to change it.

To verify an independent checkout of this Ruby package:

```sh
ruby -Ilib test/client_test.rb
gem build evalgate.gemspec
gem install --local --no-document evalgate-sdk-3.15.0.gem
```

From the platform source repository, check generated client freshness:

```sh
node scripts/generate-sdk-ecosystems.mjs --check
```

The gem uses an explicit file allowlist: runtime Ruby, RBS, README, MIT license,
and the generated contract manifest. Private platform source, deployment files,
and credentials are excluded.

Documentation: https://www.evalgate.com/docs/sdk/ruby. Support: hello@evalgate.com.
