Pod::Spec.new do |s|
  s.name             = 'Style'
  s.version          = '0.0.1'
  s.summary          = 'The Style module of the Zendesk Toolkit.'
  s.description      = <<-DESC
  The Style module of the Toolkit provides access to classes that can be used to alter the appearance of the Toolkit.
                       DESC
  s.homepage         = 'https://github.com/zendesk/mobile_toolkit_ios'
  s.author           = { 'Daniel Sessions' => 'dsessions@zendesk.com' }
  s.source           = { :git => 'https://github.com/zendesk/mobile_toolkit_ios.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'Style/**/*.{swift}'
end
