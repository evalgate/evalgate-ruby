require "json"
manifest = JSON.parse(File.read(File.join(__dir__, "generation.json")))
Gem::Specification.new do |spec|
  spec.name = "evalgate-sdk"
  spec.version = manifest.fetch("version")
  spec.authors = ["EvalGate"]
  spec.email = ["hello@evalgate.com"]
  spec.summary = "Official generated EvalGate REST SDK"
  spec.description = "Typed models, all public OpenAPI operations, scoped API authentication, pagination, structured errors, and idempotency for EvalGate."
  spec.homepage = "https://evalgate.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2"
  spec.files = Dir.chdir(__dir__) { Dir["lib/**/*.rb", "sig/**/*.rbs", "README.md", "LICENSE", "generation.json"] }
  spec.require_paths = ["lib"]
  spec.metadata = {
    "homepage_uri" => "https://evalgate.com",
    "documentation_uri" => "https://www.evalgate.com/docs/sdk/ruby",
    "bug_tracker_uri" => "https://www.evalgate.com/contact",
    "changelog_uri" => "https://www.evalgate.com/changelog"
  }
end
