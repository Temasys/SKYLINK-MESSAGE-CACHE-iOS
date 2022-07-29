Pod::Spec.new do |s|
    s.name                = "SKYLINK_MESSAGE_CACHE"
    s.version             = "1.0.0"
    s.summary             = "SKYLINK_MESSAGE_CACHE.framework distribution"
    s.license             = 'MIT'
    s.author              = { "Temasys Communications" => "lakindu@temasys.com.sg" }
    s.homepage            = "https://github.com/lakinduboteju/SKYLINK-MESSAGE-CACHE-iOS"
    s.source              = { :git => "https://github.com/lakinduboteju/SKYLINK-MESSAGE-CACHE-iOS.git", :tag => s.version.to_s }
    s.platform            = :ios, '9.0'
    s.requires_arc        = true
    s.vendored_frameworks = 'SKYLINK_MESSAGE_CACHE.framework'
  
    # I think this is needed because on the new arm Macs. Now you can have arm64 simulators, which we don't support today
    # Additional note: this is not how I would like things to be...
    # https://stackoverflow.com/questions/63607158/xcode-12-building-for-ios-simulator-but-linking-in-object-file-built-for-ios
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  end