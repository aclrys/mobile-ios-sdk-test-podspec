Pod::Spec.new do |s|
  s.name              = 'openx-apollo-sdk'
  s.version           = '1.1.0'
  s.summary           = 'The official OpenX Apollo SDK allows publishers to monetize their apps by In-App bidding.'
  s.homepage          = 'https://www.openx.com/prebid/'
  s.documentation_url = 'https://github.com/openx/mobile-ios-sdk-doc'
  s.license           = { :type => 'Copyright', :text => 'Copyright 2020 OpenX. All rights reserved.\n' }
  s.author            = { 'OpenX' => 'mobile-eng-team@openx.com' }
  
  s.requires_arc  = true
  s.ios.deployment_target = '8.0'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  
  s.source         = { :http => 'https://sdk.devint.gcp.openx.org/apollo/ios/sdk/1.1.0/OpenX_Apollo_SDK_iOS_1.1.0.zip' }
  s.ios.vendored_frameworks = 'OpenX_Apollo_SDK_iOS_1.1.0/OpenXApolloSDK.framework'
  
  s.frameworks = [ 'UIKit', 'Foundation', 'MapKit', 'SafariServices', 'AVFoundation', 'CoreGraphics', 'CoreLocation', 'CoreMedia', 'MediaPlayer', 'QuartzCore' ]
  s.weak_frameworks  = [ 'AdSupport', 'StoreKit', 'WebKit' ]
end
