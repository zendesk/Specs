Pod::Spec.new do |s|
  s.name             = 'Networking'
  s.version          = '0.0.1'
  s.summary          = 'The Networking module of the Zendesk Toolkit.'
  s.description      = <<-DESC
  The Networking module of the Toolkit provides access to providers and models that can be used to request data.
                       DESC
  s.homepage         = 'https://github.com/zendesk/mobile_toolkit_ios'
  s.author           = { 'Daniel Sessions' => 'dsessions@zendesk.com' }
  s.source           = { :git => 'https://github.com/zendesk/mobile_toolkit_ios.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'Networking/**/*.{swift}'
  s.dependency 'Alamofire', '~> 4.4.0'
  s.dependency 'Gloss'
end
