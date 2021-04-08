# Pod sources
source 'https://github.com/CocoaPods/Specs.git'

# Initial configuration
platform :ios, '9.0'
use_frameworks!

target 'NGRValidationTests' do
    pod 'Expecta'
    pod 'Specta'
end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings['SDKROOT'] = 'iphoneos'
    config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'
    config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = ''
    config.build_settings['TVOS_DEPLOYMENT_TARGET'] = ''
    config.build_settings['WATCHOS_DEPLOYMENT_TARGET'] = ''
  end
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SDKROOT'] = '$(inherited)'
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '$(inherited)'
      config.build_settings['TARGETED_DEVICE_FAMILY'] = '$(inherited)'
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '$(inherited)'
      config.build_settings['TVOS_DEPLOYMENT_TARGET'] = '$(inherited)'
      config.build_settings['WATCHOS_DEPLOYMENT_TARGET'] = '$(inherited)'
    end
  end
end
