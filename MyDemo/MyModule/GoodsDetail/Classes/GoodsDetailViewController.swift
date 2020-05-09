//
//  GoodsDetailViewController.swift
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

import UIKit

class GoodsDetailViewController: UIViewController {
    
    private var id: Int
    private var callback: (String) -> ()
    
    // 注意：这里务必加上@objc
    @objc init(id: Int, callback: @escaping (String) -> ()) {
        self.id = id
        self.callback = callback
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "商品详情 Swift"
        
        do {
            let label = UILabel(frame: CGRect(x: 10, y: 90, width: 300, height: 200))
            label.text = "商品ID: \(id)"
            view.addSubview(label)
        }
        
        do {
            let btn = UIButton(frame: CGRect(x: 10, y: 320, width: 100, height: 60))
            btn.backgroundColor = .red
            btn.setTitle("回到首页", for: .normal)
            btn.addTarget(self, action: #selector(backToRoot), for: .touchUpInside)
            view.addSubview(btn)
        }
        
        callback("成功调用商品详情")
    }
    
    @objc private func backToRoot() {
        navigationController?.popToRootViewController(animated: true)
    }
}
