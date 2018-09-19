//
//  ViewController.swift
//  UIActivityIndicatorView
//
//  Created by 李维强 on 2018/9/19.
//  Copyright © 2018 李维强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let activity = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
        
        //设置居中
        activity.center = self.view.center
        self.view.addSubview(activity)
        
        activity.color = UIColor.green
        
        //开始播放加载动画
        activity.startAnimating()
        //当停止时是否隐藏
        activity.hidesWhenStopped = false
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        activity.stopAnimating()
    }


}

