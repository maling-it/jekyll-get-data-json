lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-get-data-json/version"
Gem::Specification.new do |spec|
  spec.name          = "jekyll-get-data-json"
  spec.summary       = "Import remote JSON data into the data for a Jekyll site"
  spec.description   = "Import remote JSON data into the data for a Jekyll site"
  spec.version       = JekyllGetDataJson::VERSION
  spec.authors       = ["Zxce3"]
  spec.email         = ["memetpea25@gmail.com"]
  spec.homepage      = "https://github.com/maling-it/jekyll-get-data-json"
  spec.licenses      = ["MIT"]
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|spec|features)/!)  }
  spec.require_paths = ["lib"]
  spec.add_dependency "jekyll", ">= 4.2"
  spec.add_dependency "deep_merge", "~> 1.2"
end
