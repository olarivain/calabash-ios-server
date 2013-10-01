Pod::Spec.new do |s|
 s.name     = 'Calabash-server-OT'
  s.version  = '0.9.35'
  s.license  = 'Eclipse Public License 1.0'
  s.platform = :ios

  s.summary  = 'An iOS automation framework.'
  s.homepage = 'https://github.com/calabash/calabash-ios-server/'
  s.authors  = { 'Karl Krukow' => 'karl.krukow@gmail.com' }
  s.source   = { :git => 'https://github.com/olarivain/calabash-ios-server.git', :tag => '1.2.1' }
  
   # LPScreencastRoute and ScreenCaptureView are not built in the calabash .xocdeproj
  s.source_files   = ['calabash/Classes/**/*.*']
                       
  s.header_mappings_dir = '.'
  s.frameworks     = 'CFNetwork'
  s.xcconfig       = { 'OTHER_LINKER_FLAGS' => '-force_load "$(PODS_ROOT)/Calabash/calabash.framework/calabash" -lstdc++' }
  s.requires_arc = false

end
