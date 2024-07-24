Pod::Spec.new do |s|

    s.name         = "AdPopcornSSP_SDK"
    s.version      = "0.0.8"
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
    admob.dependency 'Google-Mobile-Ads-SDK', '11.2.0'
    end
    
    
    # 4. pod 관련 error
#    s.subspec 'MediationCauly' do |cauly|
#    cauly.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationCauly.xcframework"
#    cauly.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
#    cauly.dependency 'CaulySDK'
#    cauly.dependency 'CaulySDK', :git => 'https://github.com/cauly/CaulySDK_iOS.git', :tag => '3.1.22'
#    cauly.source       = { :git => "https://github.com/cauly/CaulySDK_iOS.git", :tag => "3.1.22" }
#    end
    
    
    s.subspec 'MediationMezzo' do |mezzo|
    mezzo.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationMezzo.xcframework", "AdPopcornSSP_SDK/xcframework/Lib/LibADPlus.xcframework", "AdPopcornSSP_SDK/xcframework/Lib/OMSDK_Cjnet.xcframework"
    mezzo.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
    end


    # 8. 수정중
#    s.subspec 'MediationMintegral' do |mintergral|
#    mintergral.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationMintegral.xcframework"
#    mintergral.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
#    mintergral.dependency 'MintegralAdSDK', '7.6.6'
#    end


    s.subspec 'MediationAdFit' do |adfit|
    adfit.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationAdFit.xcframework"
    adfit.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
    adfit.dependency 'AdFitSDK', '3.14.5'
    end
    
    
    s.subspec 'MediationVungle' do |vungle|
    vungle.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationVungle.xcframework"
    vungle.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
    vungle.dependency 'VungleAds', '7.3.2'
    end


    s.subspec 'MediationAppLovinMax' do |applovinmax|
    applovinmax.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationAppLovinMax.xcframework"
    applovinmax.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
    applovinmax.dependency 'AppLovinSDK', '12.5.0'
    end
    
    
    s.subspec 'MediationFyber' do |fyber|
    fyber.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationFyber.xcframework"
    fyber.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
    fyber.dependency 'Fyber_Marketplace_SDK', '8.3.0'
    end
    
    
    # 18. 수정중 pod 
#    s.subspec 'MediationPangle' do |pangle|
#    pangle.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationPangle.xcframework"
#    pangle.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
#    pangle.dependency 'Ads-Global', '5.8.0.8'
#    end


    s.subspec 'MediationAppLovin' do |applovin|
    applovin.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationAppLovin.xcframework"
    applovin.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
    applovin.dependency 'AppLovinSDK', '12.5.0'
    end
    
    # 8. KissXML iOS 8.0 Target error
#    s.subspec 'MediationNAM' do |nam|
#    nam.ios.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationNAM.xcframework"
#    nam.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
#    nam.dependency 'NAMSDK', '7.5.3'
#    nam.dependency 'NAMSDK/MediationNDA', '7.5.3'
#    nam.ios.deployment_target = '13.0'
#    end
    
    
#    s.subspec 'MediationADOP' do |adop|
#    adop.vendored_frameworks = "AdPopcornSSP_SDK/xcframework/MediationADOP.xcframework"
#    adop.dependency 'AdPopcornSSP_SDK/AdPopcornSSP'
#    adop.dependency 'Google-Mobile-Ads-SDK', '11.2.0'
#    end
    
    
    s.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'WebKit', 'AVKit', 'Network', 'AdSupport', 'AppTrackingTransparency', 'CoreTelephony', 'OSLog',  'MobileCoreServices', 'SystemConfiguration'


#    s.requires_arc = true
    
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
