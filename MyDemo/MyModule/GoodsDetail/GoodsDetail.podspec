Pod::Spec.new do |spec|
  spec.name         = "GoodsDetail"
  spec.version      = "0.0.1"
  spec.summary      = "GoodsDetail."
  spec.description  = "Goods detail module."
  spec.homepage     = "http://EXAMPLE/GoodsList"
  spec.author       = { "Rachal" => "zrcrachal@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
end
