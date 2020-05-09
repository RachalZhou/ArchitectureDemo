Pod::Spec.new do |spec|
  spec.name         = "GoodsList"
  spec.version      = "0.0.1"
  spec.summary      = "GoodsList."
  spec.description  = "Goods list module."
  spec.homepage     = "http://EXAMPLE/GoodsList"
  spec.author       = { "Rachal" => "zrcrachal@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.dependency 'CTMediator'
end
