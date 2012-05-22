$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "html5shiv-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "html5shiv-rails"
  s.version     = Html5shivRails::VERSION
  s.authors     = ["David Morton"]
  s.email       = ["mortonda@dgrmm.net"]
  s.homepage    = "https://github.com/dgm/html5shiv-rails"
  s.summary     = "A rails gem theat bundles the html5-shiv in a gem"
  s.description = "While it is easy to just copy from the original github site, having it in a gem file should be even easier!"

  s.files = Dir["{vendor,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "railties", ">= 3.2.0", "< 5.0"
  s.require_path = 'lib'
  # s.add_dependency "jquery-rails"

  #s.add_development_dependency "sqlite3"
end
