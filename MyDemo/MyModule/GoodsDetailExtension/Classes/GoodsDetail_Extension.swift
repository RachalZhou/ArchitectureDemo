//
//  GoodsDetail_Extension.swift
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

import CTMediator

public extension CTMediator {
    @objc func viewController(forGoodsDetail id: Int) -> UIViewController {
        let params = ["id" : id,
                      kCTMediatorParamsKeySwiftTargetModuleName: "GoodsDetail"] as [AnyHashable : Any]
        let vc = self.performTarget("GoodsDetail",
                                    action: "viewControllerForGoodsDetail",
                                    params: params,
                                    shouldCacheTarget: false) as? UIViewController
        return vc ?? UIViewController()
    }
}
