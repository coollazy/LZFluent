Pod::Spec.new do |s|
  s.name         = "LZFluent"
  s.version      = "1.0.0"
  s.summary      = "LZFluent"
  s.description  = <<-DESC
                   The extensions of fluent interface for UIKit.
                   DESC

  s.homepage     = "https://github.com/venwu1984/LZFluent.git"
  s.license      = "MIT"
  s.author       = { "ven.wu" => "ven.wu.github@gamil.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/venwu1984/LZFluent.git", :tag => s.version }
  s.source_files = "Classes/**/*.{swift}"
end
