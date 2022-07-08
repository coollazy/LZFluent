Pod::Spec.new do |s|
  s.name         = "LZFluent"
  s.version      = "1.0.0"
  s.summary      = "LZFluent"
  s.description  = <<-DESC
                   The extensions of fluent interface for UIKit.
                   DESC

  s.homepage     = "https://gitlab.com/LZLibs/LZFluent"
  s.license      = "MIT"
  s.author       = { "ven.wu" => "ven.wu1984@gamil.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "git@gitlab.com:LZLibs/LZFluent.git", :tag => s.version }
  s.source_files = "Classes/**/*.{swift}"
  s.requires_arc = true
  s.static_framework = true
end
