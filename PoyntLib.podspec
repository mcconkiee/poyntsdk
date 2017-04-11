#
#  Be sure to run `pod spec lint PoyntLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "PoyntLib"
  s.version      = "0.0.5"
  s.summary      = "PoyntLib sdk for Poynt Smart terminal"
  s.description  = <<-DESC
  Bugsnag version....PoyntLib is a static library that allows iOS applications to communicate with a Poynt Smart Terminal
                   DESC
  s.homepage     = "http://poytn.net/PoyntLib"  
  s.license      = "MIT"
  s.author             = { "Eric McConkie" => "eric@ericmcconkie.com" }
  
  s.platform     = :ios
  s.source       = { :path => 'Debug-universal' }
  s.public_header_files = 'Debug-universal/include/PoyntLib/**/*.h'
  s.vendored_libraries    = 'Debug-universal/libPoyntLib.a'
  s.preserve_paths        = 'Debug-universal/libPoyntLib.a', 'Debug-universal/include/PoyntLib/**/*.h'
  s.dependency "Bugsnag"
  
end
