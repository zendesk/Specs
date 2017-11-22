#
# Be sure to run `pod lib lint Composer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Composer'
  s.version          = '0.2.0.6'
  s.summary          = 'Composer iOS message composition controller'

  s.description      = <<-DESC
Composer iOS message composition controller can be added to any iOS
                       DESC

  s.homepage         = 'https://github.com/superpeteblaze/ScalingCarousel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pete' => 'psmith@zendesk.com' }
  s.source           = { :git => 'git@github.com:zendesk/Composer.git', :tag => "v#{s.version.to_s}" }

  s.ios.deployment_target = '9.0'

  s.source_files     = 'Composer/Classes/**/*'
  s.resources        = 'Composer/Resources/*.xib'
end
