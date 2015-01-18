Pod::Spec.new do |s|
  s.name         = "NKJPagerViewController"
  s.version      = "0.1"
  s.summary      = "NKJPagerViewController is like a FragmentsTabsPager, which is in Android. It contains an endlessly scrollable UIScrollView."
  s.homepage     = "https://github.com/nakajijapan/NKJPagerViewController"
  s.screenshots  = "./swipe.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "nakajijapan" => "pp.kupepo.gattyanmo@gmail.com" }
  s.social_media_url   = "http://twitter.com/nakajijapan"
  s.platform     = :ios

  #s.source       = { :git => "https://github.com/nakajijapan/NKJPagerViewController.git", :tag => "0.1" }
  s.source       = { :git => "git@github.com:nakajijapan/NKJPagerViewController.git", :tag => "0.1" }
  s.source_files = "Classes/**/*.{h,m}"
  s.requires_arc = true

end
