#!/usr/bin/env ruby


# ruby 실행
# ruby update_version.rb


require 'shellwords'

# 업데이트할 버전 번호
new_version = '0.0.21'
APSSPSDK_version = '>= 0.0.21'

log_String = "pangle, UnityAds Banner 추가, error 수정"


# 업데이트할 podspec 파일 경로
podspec_files = [
    'AdPopcornSSPSDK.podspec',
    'APSDKMediationNAM.podspec',
    'APSDKMediationAdMob.podspec',
    'APSDKMediationAdFit.podspec',
    'APSDKMediationADOP.podspec',
    'APSDKMediationAppLovin.podspec',
    'APSDKMediationAppLovinMax.podspec',
    'APSDKMediationCauly.podspec',
    'APSDKMediationFBAudienceNetwork.podspec',
    'APSDKMediationFyber.podspec',
    'APSDKMediationMezzo.podspec',
    'APSDKMediationMintegral.podspec',
    'APSDKMediationPangle.podspec',
    'APSDKMediationUnityAds.podspec',
    'APSDKMediationvungle.podspec'
    ]


## podspec 파일 업데이트
#podspec_files.each do |podspec|
#  contents = File.read(podspec)
#  contents.gsub!(/s\.version\s+=\s+['"][\d\.]+['"]/, "s.version   = '#{new_version}'")
#  contents.gsub!(/s\.dependency\s+['"]AdPopcornSSPSDK['"],\s+['"][^'"]+['"]/, "s.dependency 'AdPopcornSSPSDK', '#{APSSPSDK_version}'")
#  File.write(podspec, contents)
#end


# git 변경사항 추가
  system("git add .")
  commit_message = "#{new_version}.ver 업데이트 #{log_String}".shellescape
  system("git commit -m \"#{commit_message}\"")
#  system("git push") # 브랜치 연결이 잘 되어 있는지 확인해야 됨!!


## tag 번호 push
#  system("git tag '#{new_version}'")
#  system("git push origin '#{new_version}'") # origin 이 아닐 수도 있다!! (명심!!)


## podspec trunk push 하기
#  system("pod spec lint")




## podspec 파일 업데이트
#podspec_files.each do |podspec|
#    if podspec == 'APSDKMediationNAM.podspec'
#        system("pod trunk push #{podspec} --skip-import-validation")
#    else
#        system("pod trunk push #{podspec}")
#    end
#end
