#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'open_camera'
  s.version          = '0.0.1'
  s.summary          = 'Open Camera is a flutter project that provides a complete widget for shooting and recording videos.'
  s.description      = <<-DESC
Open Camera is a flutter project that provides a complete widget for shooting and recording videos.
                       DESC
  s.homepage         = 'https://github.com/openponce/opencamera'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Open Ponce Foundation' => 'support@openponce.org' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '9.3'
end