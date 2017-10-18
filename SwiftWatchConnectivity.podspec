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
SwiftWatchConnectivity is a WatchConnectivity simple wrapper.
- Queueing requested and received task until all available
- Support all transer between iOS and watchOS
                       DESC

  s.homepage         = 'https://github.com/Matzo/SwiftWatchConnectivity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ksk.matsuo@gmail.com' => 'ksk.matsuo@gmail.com' }
  s.source           = { :git => 'https://github.com/Matzo/SwiftWatchConnectivity.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'
  s.watchos.deployment_target = '4.0'

  s.source_files = 'SwiftWatchConnectivity/Classes/**/*'
end
