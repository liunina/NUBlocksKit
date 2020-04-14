#
# Be sure to run `pod lib lint NUBlocksKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NUBlocksKit'
  s.version          = '0.1.4'
  s.summary          = 'A short description of NUBlocksKit.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://nas.iliunian.com:82/apple/NUBlocksKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'i19850511@gmail.com' => 'i19850511@gmail.com' }
  s.source           = { :git => 'http://nas.iliunian.com:82/apple/NUBlocksKit.git', :tag => s.version.to_s }
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'
  s.watchos.deployment_target = '2.0'

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'NUBlocksKit/Core'
    ss.dependency 'NUBlocksKit/DynamicDelegate'
    ss.ios.dependency 'NUBlocksKit/MessageUI'
    ss.ios.dependency 'NUBlocksKit/QuickLook'
    ss.ios.dependency 'NUBlocksKit/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'NUBlocksKit/BlocksKit.h', "NUBlocksKit/BKDefines.h", 'NUBlocksKit/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = "NUBlocksKit/BKDefines.h",'NUBlocksKit/DynamicDelegate/*.{h,m}', 'NUBlocksKit/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'NUBlocksKit/Core'
    ss.dependency 'NUBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'NUBlocksKit/BlocksKit+MessageUI.h', 'NUBlocksKit/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'QuickLook' do |ss|
    ss.dependency 'NUBlocksKit/Core'
    ss.dependency 'NUBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'NUBlocksKit/BlocksKit+QuickLook.h', 'NUBlocksKit/QuickLook/*.{h,m}'
    ss.ios.frameworks = 'QuickLook'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'NUBlocksKit/Core'
    ss.dependency 'NUBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'NUBlocksKit/BlocksKit+UIKit.h', 'NUBlocksKit/UIKit/*.{h,m}'
  end
end
