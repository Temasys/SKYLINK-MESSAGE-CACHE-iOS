#
# Be sure to run `pod lib lint SKYLINK_MESSAGE_CACHE.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SKYLINK_MESSAGE_CACHE'
  s.version          = '1.0.2'
  s.summary          = 'SKYLINK_MESSAGE_CACHE.framework distribution.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  SKYLINK_MESSAGE_CACHE.framework distribution for iOS.
                       DESC

  s.homepage         = 'https://github.com/Temasys/SKYLINK-MESSAGE-CACHE-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Temasys Communications' => 'lakindu@temasys.com.sg' }
  s.source           = { :git => 'https://github.com/Temasys/SKYLINK-MESSAGE-CACHE-iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.platform        = :ios, '10.0'
  s.requires_arc    = true

  # s.source_files = 'SKYLINK_MESSAGE_CACHE/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SKYLINK_MESSAGE_CACHE' => ['SKYLINK_MESSAGE_CACHE/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.vendored_frameworks = 'SKYLINK_MESSAGE_CACHE.framework'
  # s.dependency 'AFNetworking', '~> 2.3'

  # I think this is needed because on the new arm Macs. Now you can have arm64 simulators, which we don't support today
  # Additional note: this is not how I would like things to be...
  # https://stackoverflow.com/questions/63607158/xcode-12-building-for-ios-simulator-but-linking-in-object-file-built-for-ios
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
