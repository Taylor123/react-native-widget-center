require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-widget-center"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-widget-center
                   DESC
  s.homepage     = "https://github.com/Taylor123/react-native-widget-center"
  s.license      = "MIT"
  s.authors      = { "Taylor Johnson" => "" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/Taylor123/react-native-widget-center.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.swift_version = '5.0'
  s.requires_arc = true

  s.dependency "React"
end

