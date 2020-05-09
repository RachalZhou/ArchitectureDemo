//
//  Target_GoodsDetail.swift
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

import UIKit

@objc class Target_GoodsDetail: NSObject {
    
    // 注意：第一个参数一定要用"_"
    @objc func Action_viewControllerForGoodsDetail(_ params: NSDictionary) -> UIViewController {
        guard
            let id: Int = params["id"] as? Int,
            let callback = params["callback"] as? (String) -> Void
            else { return UIViewController() }
        return GoodsDetailViewController(id: id, callback: callback)
    }
}
