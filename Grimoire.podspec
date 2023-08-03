#
# Be sure to run `pod lib lint Grimoire.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Grimoire'
  s.version          = '1.2.2'
  s.summary          = 'Basic Swift Dependency Injection Annotations'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Grimoire is Basic Dependency Injection with Annotations. Why the name is Grimoire? so this framework will make your instance like a magical instance, and Grimoire is a list of magical instances that you register before.
                       DESC

  s.homepage         = 'https://github.com/marcofebriano/Grimoire'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'marcofebriano' => 'febrianomarco@gmail.com' }
  s.source           = { :git => 'https://github.com/marcofebriano/Grimoire.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.1'
  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/**/*.swift'
  s.readme = 'https://github.com/marcofebriano/Grimoire/blob/main/README.md'
  
  # s.resource_bundles = {
  #   'Grimoire' => ['Grimoire/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
