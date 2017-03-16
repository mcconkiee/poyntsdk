#
# Be sure to run `pod lib lint PoyntLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name                  = 'PoyntLib'
  spec.version               = '0.1.5'
  spec.summary               = 'The PoyntLib allows iOS clients to connect and communicate with the Poynt Smart Terminal.'
  spec.description           = <<-DESC
The PoyntLib allows iOS clients to connect and communicate with the Poynt Smart Terminal. The terminal must have the POSConnector installed and running to make requests and pairing possible.
                       DESC

  spec.homepage              = 'https://github.com/poynt/pos-connector-ios-sdk-sample'
  spec.license               = { :type => 'MIT', :file => 'LICENSE' }
  spec.author                = { 'Eric McConkie' => 'eric@poynt.com' }  
  spec.source                = { :git => 'https://github.com/mcconkiee/poyntsdk.git',  :branch => 'bugsnagg' }
  spec.module_name           = "PoyntLib"
  spec.libraries             = 'PoyntLib'
  
  spec.ios.deployment_target = '8.0'  
  spec.source_files          = 'include/**/*.h'
  spec.preserve_paths        = 'libPoyntlib.a'
  spec.vendored_libraries    = 'libPoyntlib.a'
  spec.library               = 'PoyntLib'
  #spec.xcconfig              = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/PoyntLib/**/*.h' }     
  spec.pod_target_xcconfig   = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  #Add bugsnag dependency for this build
  #spec.dependency 'Bugsnag'
end
