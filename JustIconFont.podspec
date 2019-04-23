#
#  Be sure to run `pod spec lint EmptyDataSet-Swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'JustIconFont'
  s.version      = '5.0.0'
  s.summary      = 'JustIconFont'
  s.description  = <<-DESC
                    IconFont use with enum
                   DESC

  s.homepage     = 'https://github.com/Xiaoye220/JustIconFont'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Xiaoye__220' => '576934532@qq.com' }

  s.source       = { :git => 'https://github.com/Xiaoye220/JustIconFont.git', :tag => s.version.to_s }
  s.swift_version = '5.0'

  s.ios.deployment_target = '8.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |sp|
    sp.source_files = 'JustIconFont/Classes/Code/**/*'
  end

  s.subspec 'FontAwesome' do |sp|
    sp.source_files = 'JustIconFont/Classes/FontAwesome/*'
    sp.resources = 'JustIconFont/Assets/FontAwesome/*.ttf'
    sp.dependency 'JustIconFont/Core'
  end

  s.subspec 'Iconic' do |sp|
    sp.source_files = 'JustIconFont/Classes/Iconic/*'
    sp.resources = 'JustIconFont/Assets/Iconic/*.ttf'
    sp.dependency 'JustIconFont/Core'
  end

  s.subspec 'Ionicons' do |sp|
    sp.source_files = 'JustIconFont/Classes/Ionicons/*'
    sp.resources = 'JustIconFont/Assets/Ionicons/*.ttf'
    sp.dependency 'JustIconFont/Core'
  end

  s.framework  = 'UIKit'


end
