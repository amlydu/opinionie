# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opinionie/version'

Gem::Specification.new do |spec|
  spec.name          = "opinionie"
  spec.version       = Opinionie::VERSION
  spec.authors       = ["Amy Dusek"]
  spec.email         = ["amlydu@umich.edu"]

  spec.summary       = %q{ Playing around with gems }
  spec.description   = %q{ Mostly aimed at figuring out how to use Thor/CLI }
  spec.homepage      = "http://www.superawesomegemz.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  ###
  ## Gemspec Dependency Notes
  # The benefit of putting a dependency specification inside of opinionie.gemspec
  # rather than the Gemfile is that anybody who runs gem install foodie --dev will
  # get these development dependencies installed too.
    # This command is used for when people wish to test a gem without having to fork
    # it or clone it from GitHub
  # If we wanted to specify a particular version we may use this line:
    # Ex) spec.add_dependency "activesupport", "4.2.0"
  # Or specify a version constraint:
    # spec.add_dependency "activesupport", ">= 4.2.0"
  # However, relying on a version simply greater than the latest-at-the-time is a sure-fire
  # way to run into problems later on down the line.
    # Try to always use ~> for specifying dependencies:
      # spec.add_dependency "activesupport", "~> 4.2.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_dependency "activesupport", "~> 4.2.0"
  # Cucumber to define the Aruba tests
  spec.add_development_dependency "cucumber"
  # Aruba, a CLI testing tool
  spec.add_development_dependency "aruba", '~> 0.14.2'
  # Thor provides us with a handy API for defining our CLI,
  # including usage banners and help output. The syntax is very
  # similar to Rake. Additionally, Rails and Bundler both use Thor
  # for their CLI interface as well as their generator base.
  spec.add_dependency "thor"
end
