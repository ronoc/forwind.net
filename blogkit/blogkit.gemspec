$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogkit"
  s.version     = 1
  s.authors     = ["Conor Curran"]
  s.email       = ["conor@forwind.net"]
  s.homepage    = "http://www.forwind.net"
  s.summary     = "summary"
  s.description = "description"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"

  s.add_development_dependency "sqlite3"
end