$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bloom_trade_client/version"

gem_description = "Mountable Rails Engine for building apps " \
  "on top of the BloomX anchor"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bloom_trade_client-rails"
  s.version     = BloomTradeClient::VERSION
  s.authors     = ["Ace Subido"]
  s.email       = ["ace.subido@gmail.com"]
  s.homepage    = "https://github.com/bloom-solutions/bloom_trade_client-rails"
  s.summary     = gem_description
  s.description = gem_description
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  if s.respond_to?(:metadata)
    s.metadata["allowed_push_host"] = "https://gem.fury.io"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  s.add_dependency "api_client_base", "~> 1.0"
  s.add_dependency "typhoeus"
  s.add_dependency "light-service"
  s.add_dependency "message_bus_client_worker", ">= 0.2.0"
  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "virtus"
  s.add_dependency "addressable"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "pry"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"
end
