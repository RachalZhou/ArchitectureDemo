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
        let id: Int = params["id"] as? Int ?? 0
        let vc = GoodsDetailViewController(id: id)
        return vc
    }
}
