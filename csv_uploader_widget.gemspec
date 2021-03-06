
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "csv_uploader_widget/version"

Gem::Specification.new do |spec|
  spec.name          = "csv_uploader_widget"
  spec.version       = CsvUploaderWidget::VERSION
  spec.authors       = ["Jakub41"]
  spec.email         = ["lemiszewski@gmx.com"]

  spec.summary       = %q{A simple widget to upload CSV files.}
  spec.description   = %q{This widget is a simple way to upload CSV files inside a directory.}
  spec.homepage      = "https://github.com/Jakub41/csv_uploader_widget"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
