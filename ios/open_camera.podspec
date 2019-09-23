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

  s.ios.deployment_target = '8.0'
end

############################################################################################
# ffmpeg config
############################################################################################

plugin_pods = parse_KV_file('../.flutter-plugins')
plugin_pods.map { |p|
symlink = File.join('.symlinks', 'plugins', p[:name])
File.symlink(p[:path], symlink)
if p[:name] == 'flutter_ffmpeg'
    pod p[:name]+'/full-gpl', :path => File.join(symlink, 'ios')
else
    pod p[:name], :path => File.join(symlink, 'ios')
end
}

############################################################################################
# END - ffmpeg config
############################################################################################