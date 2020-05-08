//
//  SwiftViewController.swift
//  MyDemo
//
//  Created by 周日朝 on 2020/5/7.
//  Copyright © 2020 ZRC. All rights reserved.
//

import UIKit
import CTMediator
import GoodsListCategory
import GoodsDetailExtension

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Swift page"
        
        do {
            let btn = UIButton(frame: CGRect(x: 20, y: 100, width: 150, height: 50))
            btn.backgroundColor = .orange
            btn.setTitle("Swift to Swift", for: .normal)
            btn.addTarget(self, action: #selector(goToSwift), for: .touchUpInside)
            view.addSubview(btn)
        }
        
        do {
            let btn = UIButton(frame: CGRect(x: 20, y: 170, width: 150, height: 50))
            btn.backgroundColor = .blue
            btn.setTitle("Swift to Objc", for: .normal)
            btn.addTarget(self, action: #selector(goToObjc), for: .touchUpInside)
            view.addSubview(btn)
        }
    }
    
    @objc func goToSwift() {
        let vc = CTMediator.sharedInstance().viewController(forGoodsDetail: 9099)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func goToObjc() {
        let vc = CTMediator.sharedInstance().viewController(forGoodsList: "大米", kindId: 232, storeId: 2)
        navigationController?.pushViewController(vc, animated: true)
    }
}
