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
  s.resources = 'Frameworks/GoogleSignIn.bundle', 'SignIn/*.xib'
  s.resource_bundle = { 'SignIn' => 'SignIn/*.lproj' }

  def s.post_install(target)
    bundle_id = 'com.zendesk.toolkit.'
    directory = installer.config.project_pods_root + 'Target Support Files/'
    Dir.foreach(directory) do |path|
        full_path = directory + path
        if File.directory?(full_path)
            info_plist_path = full_path + 'Info.plist'
            if File.exist?(info_plist_path)
                text = File.read(info_plist_path)
                new_contents = text.gsub('${PRODUCT_BUNDLE_IDENTIFIER}', bundle_id + path)
                File.open(info_plist_path, "w") {|file| file.puts new_contents }
            end
        end
    end
  end


end
