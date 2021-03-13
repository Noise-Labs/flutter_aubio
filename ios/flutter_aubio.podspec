#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_aubio.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_aubio'
  s.version          = '0.5.0'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'
  s.ios.frameworks = 'AudioToolbox','Accelerate'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  #s.prepare_command  = 'cd aubio && make getwaf && scripts/build_ios_static_libraries && cd .. && bash ./build_static_library.sh'
  s.preserve_paths   = 'Library/*.a'
  #s.vendored_libraries = 'Library/libaubio-iosimulator.a'
  s.ios.xcconfig = { 'OTHER_LDFLAGS' => ' -Wl,-force_load,$PROJECT_DIR/../.symlinks/plugins/flutter_aubio/ios/Library/libaubio-iosimulator.a' }
end


