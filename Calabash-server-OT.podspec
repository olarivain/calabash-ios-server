
version = '0.9.81'

Pod::Spec.new do |s|
 s.name     = 'Calabash-server-OT'
  s.version  = version
  s.license  = 'Eclipse Public License 1.0'
  s.platform = :ios

  s.summary  = 'An iOS automation framework.'
  s.homepage = 'https://github.com/calabash/calabash-ios-server/'
  s.authors  = { 'Karl Krukow' => 'karl.krukow@gmail.com' }
  s.source   = { :git => 'https://github.com/olarivain/calabash-ios-server.git', :tag => "v#{version}" }
  
   # LPScreencastRoute and ScreenCaptureView are not built in the calabash .xocdeproj
  s.source_files   = ['calabash/**/*.{h,m,c,mm,cpp}', 'calabash-js/CalabashJS/CalabashJSLib/**/*.{h,m,c,mm,cpp}', 'calabash-js/CalabashJS/External/**/*.{h,m,c,mm,cpp}']
                       
  # s.header_mappings_dir = './calabash/Classes/**'
  s.frameworks     = 'CFNetwork'
  s.xcconfig       = { 'OTHER_LINKER_FLAGS' => '-force_load "$(PODS_ROOT)/Calabash/calabash.framework/calabash" -lstdc++', 'OTHER_CFLAGS' => '${inherited} -DDEBUG=0' }
  s.requires_arc = false
  s.prepare_command = '#!/bin/bash git submodule update --init'

end
