require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "ReactNativeNavigation"
  s.version      = "2.29.0"
  s.summary      = package['description']

  s.authors      = "Wix.com"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.module_name  = 'ReactNativeNavigation'

  s.source       = { :git => "https://github.com/@eightyfive/react-native-navigation.git", :tag => "2.29.0" }
  s.source_files  = "lib/ios/**/*.{h,m}"
  s.exclude_files  = "lib/ios/ReactNativeNavigationTests/**/*.*", "lib/ios/OCMock/**/*.*"

  s.dependency 'React'
  s.frameworks = 'UIKit'
end
