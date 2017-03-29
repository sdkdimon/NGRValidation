#  NGRValidation

Pod::Spec.new do |s|

  s.name         = "NGRValidation"
  s.version      = "1.3.0"
  s.summary      = "Centralized and comprehensive validator for iOS"

  s.description  = "NGRValidator is an Objective-C 3rd party library for iOS and OSX. It allows you to validate the data in the way that you want. It's an easy to read, centralized, and comprehensive solution to validating any Objective-C model in just a few lines of code."

  s.homepage      = "https://github.com/sdkdimon/NGRValidation"
  s.license       = { :type => 'MIT', :file => 'LICENSE.md' }

  s.authors       = {'Dmitry Lizin' => 'sdkdimon@gmail.com'}
  s.source        = { :git => 'https://github.com/sdkdimon/NGRValidation.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc  = true

  s.source_files  = 'NGRValidation/**/*.{h,m}'
  s.module_map = 'NGRValidation/modulemap.modulemap'
  
end
