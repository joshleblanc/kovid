require_relative 'lib/kovid/version'

Gem::Specification.new do |spec|
  spec.name          = "kovid"
  spec.version       = Kovid::VERSION
  spec.authors       = ["Emmanuel Hayford"]
  spec.email         = ["siawmensah@gmail.com"]

  spec.summary       = %q{A CLI to fetch and compare the 2019 coronavirus pandemic statistics.}
  spec.description   = %q{A CLI to fetch and compare the 2019 coronavirus pandemic statistics.}
  spec.homepage      = "https://github.com/siaw23/kovid"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/siaw23/kovid"
  spec.metadata["changelog_uri"] = "https://github.com/siaw23/kovid"

  spec.add_dependency "thor", "~> 1.0"
  spec.add_dependency "terminal-table", "~> 1.8"
  spec.add_dependency "typhoeus", "~> 1.3"
  spec.add_dependency "rainbow", "~> 3.0"
  spec.add_dependency "ascii_charts", "~> 0.9.1"


  spec.add_development_dependency "simplecov", "~>  0.18"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.post_install_message = %q{
    ============================================================================
      COVID-19 has devasted the world. But while we're fighting
      with the novel coronavirus, I think stats on the issue should be
      accessible.

      There isn't much we can do now besides:

      * Washing our hands with soap frequently.
      * Limiting our movements, how much we touch our faces & social distancing.
      * Disinfecting our phones, keys, doorknobs, keyboards, etc.
      * Being there for each other.

      Stay safe!
      Emmanuel Hayford.
      https://emmanuelhayford.com/

      Data Sources:
        * JHU CSSE GISand Data
        * https://www.worldometers.info/coronavirus/

      PS: Please update often, contribute code/ideas, report issues 🙏.
    ============================================================================
    }
end
