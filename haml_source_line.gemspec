
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "haml_source_line"
  spec.version       = '0.1.1'
  spec.authors       = ["Reginald Tan", "Adnan Ali"]
  spec.email         = ["redge.tan@gmail.com", "adnan.ali@gmail.com"]

  spec.summary       = %q{This gem adds the HAML source line into the resulting HTML.}
  spec.description   = %q{This gem adds the HAML source line into the resulting HTML.}
  spec.homepage      = "https://github.com/financeit/haml_source_line"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "haml"
  spec.add_development_dependency "bundler", "~> 1.16"
end
