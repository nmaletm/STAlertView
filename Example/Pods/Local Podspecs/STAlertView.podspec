#
# Be sure to run `pod lib lint STAlertView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "STAlertView"
  s.version          = "0.0.1"
  s.summary          = "Wrapper of the native UIAlertView that work with blocks"
  s.description      = <<-DESC
    Do you like to use the UIAlertViewDelegate for each UIAlertView? Specially when there are more than one at the same view controller. With STAlertView, you will be able to define the behaviour of Yes/No with a block, at the same place you 
    create the alert view. This will increase the readability of your code.
                       DESC
  s.homepage         = "https://github.com/nmaletm/STAlertView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Nestor Malet" => "nmaletm@gmail.com" }
  s.source           = { :git => "https://github.com/nmaletm/STAlertView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'STAlertView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
