Pod::Spec.new do |s|
  s.name             = 'UI'
  s.version          = '0.0.1'
  s.summary          = 'The UI module of the Zendesk Toolkit.'
  s.description      = <<-DESC
  The UI module of the Toolkit provides access to useful user interface elements common to the other modules.
                       DESC
  s.homepage         = 'https://github.com/zendesk/mobile_toolkit_ios'
  s.author           = { 'Daniel Sessions' => 'dsessions@zendesk.com' }
  s.source           = { :git => 'git@github.com:zendesk/mobile_toolkit_ios.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'UI/**/*.{swift}'
  s.dependency 'Style'
end
