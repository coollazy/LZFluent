Pod::Spec.new do |s|
  s.name          = "LZFluent"
  s.version       = "1.0.6"
  s.swift_version = "5.0.0"
  s.summary       = "LZFluent"
  s.description   = <<-DESC
                     The extensions of fluent interface for UIKit.
                     DESC

  s.homepage      = "https://github.com/coollazy/LZFluent.git"
  s.license       = "MIT"
  s.author        = { "ven.wu" => "ven.wu.github@gamil.com" }
  s.platform      = :ios, "10.0"
  s.source        = { :git => "https://github.com/coollazy/LZFluent.git", :tag => s.version }
  s.source_files  = "Sources/LZFluent/**/*.{swift}"
end
