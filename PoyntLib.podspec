#
#  Be sure to run `pod spec lint PoyntLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
<<<<<<< HEAD
<<<<<<< HEAD
  s.name             = 'PoyntLib'
  s.version          = '0.1.4'
  s.summary          = 'The PoyntLib allows iOS clients to connect and communicate with the Poynt Smart Terminal.'
=======
>>>>>>> bugsnagg

  s.name         = "PoyntLib"
  s.version      = "0.0.2"
=======
  s.name         = "PoyntLib"
  s.version      = "0.0.5"
>>>>>>> 87945b649af758eaf89c0303ff033770d1d11d2f
  s.summary      = "PoyntLib sdk for Poynt Smart terminal"
  s.description  = <<-DESC
  Bugsnag version....PoyntLib is a static library that allows iOS applications to communicate with a Poynt Smart Terminal
                   DESC
  s.homepage     = "http://poynt.net/PoyntLib"  
  s.license      = "MIT"
  s.author             = { "Eric McConkie" => "eric@ericmcconkie.com" }
  
  s.platform     = :ios
  s.source       = { :path => 'Debug-universal' }
  s.public_header_files = 'Debug-universal/include/PoyntLib/**/*.h'
  s.vendored_libraries    = 'Debug-universal/libPoyntLib.a'
  s.preserve_paths        = 'Debug-universal/libPoyntLib.a', 'Debug-universal/include/PoyntLib/**/*.h'
  s.dependency "Bugsnag",'~>5.7.0'
  s.dependency "OpenSSL-Universal",'~>1.0.1.20'
  
end
