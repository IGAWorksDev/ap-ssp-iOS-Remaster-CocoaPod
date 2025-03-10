Pod::Spec.new do |s|

    s.name         = "APSDKMediationADOP"
    s.version   = '11.2.0.0'
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
    s.source       = { :git => "https://github.com/IGAWorksDev/ap-ssp-iOS-Remaster-CocoaPod.git", :branch => "main" }
    
    
    s.vendored_frameworks = "MediationSDK/ADOP/#{s.version.to_s}/APSDKMediationADOP.xcframework"
    s.dependency 'AdPopcornSSPSDK', '>= 0.0.23'
    s.dependency 'Google-Mobile-Ads-SDK', '11.2.0'
    
    
    s.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'WebKit', 'AVKit', 'Network', 'AdSupport', 'AppTrackingTransparency', 'CoreTelephony', 'OSLog',  'MobileCoreServices', 'SystemConfiguration'


    s.requires_arc = true
    s.static_framework = true
        
    s.swift_versions = ['5.0']
    
    s.pod_target_xcconfig  = { 'OTHER_LDFLAGS' => '-ObjC' }
    
    
end
