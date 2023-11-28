Pod::Spec.new do |s|
  s.name         = 'SwiftTryCatch'
  s.version      = '1.0.0'
  s.summary      = 'Adds try-catch support for Swift'
  s.description  = s.summary + ' via CocoaPods'
  s.homepage     = 'https://github.com/williamFalcon/SwiftTryCatch'
  s.license      = 'MIT'
  s.author       = { 'William Falcon' => 'waf2107@columbia.edu' }
  s.source       = { git: 'https://github.com/williamFalcon/SwiftTryCatch.git', branch: 'master' }
  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.13"
  s.watchos.deployment_target = "4.0"
  s.tvos.deployment_target = "11.0"
  s.source_files = 'SwiftTryCatch.{h,m}'
end
