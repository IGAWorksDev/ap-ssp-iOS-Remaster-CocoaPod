Pod::Spec.new do |s|

    s.name         = "APSDKMediationCauly"
    s.version   = '0.0.17'
    s.summary      = "AdPopcorn Mobile Ads Mediation SDK Mediation"
    s.homepage     = "https://github.com/IGAWorksDev/ap-ssp-iOS-Remaster-CocoaPod"
    s.license      = {
        "type": "Apache License, Version 2.0",
        "file": "LICENSE"
      }
    
    s.author       = { "mick" => "mick@igaworks.com",
                       "mick.kim" => "mick.kim@adpopcorn.com",
                       "odin.song" => "odin.song@adpopcorn.com"
                     }
    s.ios.deployment_target = "13.0"
    s.source       = { :git => "https://github.com/IGAWorksDev/ap-ssp-iOS-Remaster-CocoaPod.git", :tag => "#{s.version.to_s}" }
    
    
    s.vendored_frameworks = "AdPopcornSSPSDK/xcframework/APSDKMediationCauly.xcframework"
    s.dependency 'AdPopcornSSPSDK', '>= 0.0.16'
#    s.dependency 'AppLovinSDK', 'CaulySDK', :git => 'https://github.com/cauly/CaulySDK_iOS.git', :tag => '3.1.22'
    
    
    s.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'WebKit', 'AVKit', 'Network', 'AdSupport', 'AppTrackingTransparency', 'CoreTelephony', 'OSLog',  'MobileCoreServices', 'SystemConfiguration'


    s.requires_arc = true
    
    s.swift_versions = ['5.0']
    
    s.pod_target_xcconfig  = { 'OTHER_LDFLAGS' => '-ObjC' }
    
    
end