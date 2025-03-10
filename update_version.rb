#!/usr/bin/env ruby


# ruby 실행
# ruby update_version.rb


require 'shellwords'

# 업데이트할 버전 번호

APSSPSDK_new_version = '0.0.25'
APSSPSDK_min_version = '>= 0.0.23'

log_String = "pangle, UnityAds Banner 추가, error 수정"

# 업데이트할 podspec 파일 경로
versions = {
  'APSDKMediationNAM.podspec' => '7.10.2.0',
  'APSDKMediationAdMob.podspec' => '11.2.0.0',
  'APSDKMediationAdFit.podspec' => '3.14.5.0',
  'APSDKMediationADOP.podspec' => '11.2.0.0',
  'APSDKMediationAppLovin.podspec' => '12.5.0.0',
  'APSDKMediationAppLovinMax.podspec' => '12.5.0.0',
  'APSDKMediationCauly.podspec' => '3.1.22.0',
  'APSDKMediationFBAudienceNetwork.podspec' => '6.15.1.0',
  'APSDKMediationFyber.podspec' => '8.3.0.0',
  'APSDKMediationMezzo.podspec' => '3.0.0.0',
  'APSDKMediationMintegral.podspec' => '7.6.9.0',
  'APSDKMediationPangle.podspec' => '5.8.0.8.0',
  'APSDKMediationUnityAds.podspec' => '4.12.0.0',
  'APSDKMediationvungle.podspec' => '7.3.2.0'
}



podspec_files = versions.keys + ['AdPopcornSSPSDK.podspec']

podspec_files.each do |podspec|
  contents = File.read(podspec)

  if podspec == 'AdPopcornSSPSDK.podspec'
    contents.gsub!(/s\.version\s+=\s+['"][\d\.]+['"]/, "s.version   = '#{APSSPSDK_new_version}'")
  else
    contents.gsub!(/s\.version\s+=\s+['"][\d\.]+['"]/, "s.version   = '#{versions[podspec]}'")
  end

  contents.gsub!(/s\.dependency\s+['"]AdPopcornSSPSDK['"],\s+['"][^'"]+['"]/, "s.dependency 'AdPopcornSSPSDK', '#{APSSPSDK_min_version}'")
  
  File.write(podspec, contents)
end



## podspec 파일 업데이트
#podspec_files.each do |podspec|
#  contents = File.read(podspec)
#  contents.gsub!(/s\.version\s+=\s+['"][\d\.]+['"]/, "s.version   = '#{new_version}'")
#  contents.gsub!(/s\.dependency\s+['"]AdPopcornSSPSDK['"],\s+['"][^'"]+['"]/, "s.dependency 'AdPopcornSSPSDK', '#{APSSPSDK_version}'")
#  File.write(podspec, contents)
#end


# git 변경사항 추가
#  system("git add .")
#  commit_message = "#{new_version}.ver 업데이트 #{log_String}".shellescape
#  system("git commit -m \"#{commit_message}\"")
#  system("git push") # 브랜치 연결이 잘 되어 있는지 확인해야 됨!!


## tag 번호 push
#  system("git tag '#{new_version}'")
#  system("git push origin '#{new_version}'") # origin 이 아닐 수도 있다!! (명심!!)


## podspec trunk push 하기
#  system("pod spec lint")




# podspec 파일 업데이트
#podspec_files.each do |podspec|
#    if podspec == 'APSDKMediationNAM.podspec'
#        system("pod trunk push #{podspec} --skip-import-validation")
#    else
#        system("pod trunk push #{podspec}")
#    end
#end
