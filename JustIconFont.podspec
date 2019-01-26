#
#  Be sure to run `pod spec lint EmptyDataSet-Swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'JustIconFont'
  s.version      = '4.2.1'
  s.summary      = 'IconFont'
  s.description  = <<-DESC
                    IconFont use with enum
                   DESC

  s.homepage     = 'https://github.com/Xiaoye220/IconFont'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { 'Xiaoye__220' => '576934532@qq.com' }

  s.ios.deployment_target = '8.0'


  s.source       = { :git => 'https://github.com/Xiaoye220/IconFont.git', :tag => '#{s.version}' }


  s.default_subspec = 'Core'

  subspec 'Core' do |sp|
    sp.source_files = 'IconFont/Code/*/*'
  end

  subspec 'FontAwesome' do |sp|
    sp.source_files = 'IconFont/FontAwesome/*'
    sp.resources = 'IconFont/FontAwesome/Resources/*.ttf'
    sp.dependency 'JustIcon/Core'
  end

  s.framework  = 'UIKit'


end
