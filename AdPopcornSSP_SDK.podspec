Pod::Spec.new do |s|

    s.name         = "AdPopcornSSP_SDK"
    s.version      = "0.0.6"
    s.summary      = "AdPopcorn Mobile Ads Mediation SDK"
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
    
    s.default_subspecs = "AdPopcornSSP"

    s.subspec 'AdPopcornSSP' do |sdk|
    sdk.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/AdPopcornSSP_SDK.xcframework"
    
    end
    
    s.subspec 'MediationAdMob' do |admob|
    admob.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationAdMob.xcframework"
    admob.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
    admob.dependency 'Google-Mobile-Ads-SDK', '11.4.0'
    end


    s.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'WebKit', 'AVKit', 'Network', 'AdSupport', 'AppTrackingTransparency', 'CoreTelephony', 'OSLog',  'MobileCoreServices', 'SystemConfiguration'


    s.static_framework = true
end
