Pod::Spec.new do |s|
  s.name             = 'Core'
  s.version          = '0.0.1'
  s.summary          = 'The Core module of the Zendesk Toolkit.'
  s.description      = <<-DESC
  The Core module of the Toolkit provides access to some useful resources. It is required by all other modules.
                       DESC
  s.homepage         = 'https://github.com/zendesk/mobile_toolkit_ios'
  s.author           = { 'Daniel Sessions' => 'dsessions@zendesk.com' }
  s.source           = { :git => 'https://github.com/zendesk/mobile_toolkit_ios.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'Core/**/*.{swift}'
end
