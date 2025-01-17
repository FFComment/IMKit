#
# Be sure to run `pod lib lint FFIMKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FFIMKit'
  s.version          = '1.1.5'
  s.summary          = 'A short description of FFIMKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/FFComment/FFIMKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '2305710307@qq.com' => '2305710307@qq.com' }
  s.source           = { :git => 'https://github.com/FFComment/FFIMKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FFIMKit/Classes/**/*'
  # s.resource_bundles = {
  #   'FFIMKit' => ['FFIMKit/Assets/*.png']
  # }
  
  # 指定所有资源文件，Assets文件夹，该文件夹专门用来存放组件的资源文件
  s.resource_bundles = {
      'FFIMKit' => ['FFIMKit/Assets/**/*']
  }
  # s.public_header_files = 'Pod/Classes/**/*.h'
#  s.frameworks = 'Foundation', 'YYText','SDWebImage','RegexKitLite','Masonry','MJExtension'
#  s.libraries = 'libopencore-amrnb', 'libopencore-amrwb'
  s.dependency 'YYText'
  s.dependency 'SDWebImage'
  s.dependency 'RegexKitLite'
  s.dependency 'Masonry'
  s.dependency 'MJExtension'
   
   
end
