Pod::Spec.new do |spec|
  spec.name         = "GoodsListCategory"
  spec.version      = "0.0.1"
  spec.summary      = "Goods list category."
  spec.description  = "Goods list category module."
  spec.homepage     = "http://EXAMPLE/GoodsList"
  spec.author       = { "Rachal" => "zrcrachal@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.dependency 'CTMediator'
end
