Pod::Spec.new do |s|
  s.name             = 'SignIn'
  s.version          = '0.0.1'
  s.summary          = 'The SignIn module of the Zendesk Toolkit.'
  s.description      = <<-DESC
  The SignIn module of the Toolkit provides everything required to authenticate with Zendesk.
                       DESC
  s.homepage         = 'https://github.com/zendesk/mobile_toolkit_ios'
  s.author           = { 'Daniel Sessions' => 'dsessions@zendesk.com' }
  s.source           = { :git => 'https://github.com/zendesk/mobile_toolkit_ios.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'SignIn/**/*.{swift}'
  s.frameworks = 'GoogleSignIn','SafariServices', 'SystemConfiguration'
  s.pod_target_xcconfig = {
	   'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/SignIn/Frameworks'
  }
  s.dependency '1PasswordExtension'
  s.dependency 'Style'
  s.dependency 'Style'
  s.dependency 'Core'
  s.dependency 'UI'
  s.dependency 'Networking'
  s.vendored_frameworks = 'Frameworks/GoogleAppUtilities.framework', 'Frameworks/GoogleSignIn.framework', 'Frameworks/GoogleSignInDependencies.framework', 'Frameworks/GoogleSymbolUtilities.framework'
  s.resources = 'Frameworks/GoogleSignIn.bundle', 'SignIn/*.lproj', 'SignIn/*.xib'
end
