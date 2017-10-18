#
# Be sure to run `pod lib lint SwiftWatchConnectivity.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftWatchConnectivity'
  s.version          = '0.1.0'
  s.summary          = 'Simple WatchConnectivity wrapper.'

  s.description      = <<-DESC
Simple WatchConnectivity wrapper.
                       DESC

  s.homepage         = 'https://github.com/ksk.matsuo@gmail.com/SwiftWatchConnectivity'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ksk.matsuo@gmail.com' => 'ksk.matsuo@gmail.com' }
  s.source           = { :git => 'https://github.com/Matzo/SwiftWatchConnectivity.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'
  s.watchos.deployment_target = '4.0'

  s.source_files = 'SwiftWatchConnectivity/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftWatchConnectivity' => ['SwiftWatchConnectivity/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
