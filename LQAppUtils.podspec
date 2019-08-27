Pod::Spec.new do |spec|
  spec.name         = 'LQAppUtils'
  spec.version      = '1.1.2'
  spec.license      = 'MIT'
  spec.author       = { "Quan Li" => "1083099465@qq.com" }
  spec.summary      = 'iOS 公共工具'
  spec.homepage     = 'https://github.com/lqIphone/AppUtils'
  spec.source       = { :git => 'https://github.com/lqIphone/AppUtils.git', :tag => '1.1.2' }
  spec.source_files  = "AppUtils/**/*.swift"
  spec.requires_arc = true
  spec.platform     = :ios, "9.0"
  spec.swift_version = '4.2'
  spec.framework  = "Security"
  spec.dependency "SwifterSwift"
end

