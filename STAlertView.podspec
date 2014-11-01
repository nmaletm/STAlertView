Pod::Spec.new do |s|
  s.name             = "STAlertView"
  s.version          = "1.0.0"
  s.summary          = "Wrapper of the native UIAlertView that work with blocks"
  s.description      = <<-DESC
    Do you like to use the UIAlertViewDelegate for each UIAlertView? Specially when there are more than one at the same view controller. With STAlertView, you will be able to define the behavior of Yes/No with a block, at the same place you 
    create the alert view. This will increase the readability of your code.
                       DESC
  s.homepage         = "https://github.com/nmaletm/STAlertView"
  s.screenshots      = "https://raw.githubusercontent.com/nmaletm/STAlertView/master/Screenshots/screenshot.png", "https://raw.githubusercontent.com/nmaletm/STAlertView/master/Screenshots/screenshot2.png"
  s.license          = 'MIT'
  s.author           = { "Nestor Malet" => "nmaletm@gmail.com" }
  s.source           = { :git => "https://github.com/nmaletm/STAlertView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/NestorMalet'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'STAlertView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
