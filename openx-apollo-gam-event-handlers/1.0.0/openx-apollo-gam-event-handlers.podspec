Pod::Spec.new do |s|
  s.name              = 'openx-apollo-gam-event-handlers'
  s.version           = '1.0.0'
  s.summary           = 'The Official OpenX Apollo SDK allows developers to easily monetize their apps by showing banner, interstitial, and native ads.'
  s.homepage          = 'https://www.openx.com/'
  s.documentation_url = 'https://github.com/openx/mobile-ios-sdk-doc'
  s.license           = { :type => 'Copyright', :text => 'Copyright 2020 OpenX. All rights reserved.\n' }
  s.author            = { 'OpenX' => 'mobile-eng-team@openx.com' }
  
  s.requires_arc  = true
  s.ios.deployment_target = '8.0'
  
  s.source         = { :http => 'https://sdk.devint.gcp.openx.org/apollo/ios/event-handlers/GAM/1.0.0/OpenX_Apollo_GAMEventHandlers_iOS_1.0.0.zip' }
  s.ios.vendored_frameworks = 'OpenX_Apollo_GAMEventHandlers_iOS_1.0.0/OpenXApolloGAMEventHandlers.framework'
  
  ### For local lint:
  # s.subspec 'openx-apollo-sdk' do |ss| ss.source_files = 'OpenX_Apollo_SDK_iOS_1.0.0/OpenXApolloSDK.framework/**/*.{h,m}' end
  # s.default_subspecs = 'main'
  
  # s.subspec 'main' do |ms| 
  s.dependency    'openx-apollo-sdk', '1.0.0'
  s.dependency    'Google-Mobile-Ads-SDK', '~>7.61.0'
  # end
end
