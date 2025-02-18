Pod::Spec.new do |s|

    s.name         = "AdPopcornSSPSDK"
    s.version   = '0.0.23'
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
    
    
    s.vendored_frameworks = "AdPopcornSSPSDK/xcframework/AdPopcornSSPSDK.xcframework"


    s.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'WebKit', 'AVKit', 'Network', 'AdSupport', 'AppTrackingTransparency', 'CoreTelephony', 'OSLog',  'MobileCoreServices', 'SystemConfiguration'


    s.requires_arc = true
    
#    s.static_framework = true
      
    s.swift_versions = ['5.0']
    
    s.pod_target_xcconfig  = { 'OTHER_LDFLAGS' => '-ObjC' }
    
#    s.pod_target_xcconfig  = {
#                                'OTHER_LDFLAGS' => '-ObjC',
#                                'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
#                             }
#
#    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
end
