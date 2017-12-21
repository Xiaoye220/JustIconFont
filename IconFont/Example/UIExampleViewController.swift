//
//  UIExampleViewController.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import UIKit

class UIExampleViewController: UIViewController {

    @IBOutlet weak var barButtonItem: UIBarButtonItem!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var _tabBarItem: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setBarButtonItem()
        setLabel()
        setImageView()
        setButton()
        setTabBarItem()
        
        let customLabel = UILabel.init(frame: CGRect.init(x: 50, y: 400, width: 100, height: 50))
        customLabel.iconFont(size: 50, icon: FontAwesome.weixin)
        view.addSubview(customLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setBarButtonItem() {
        barButtonItem.iconFont(size: 25, icon: FontAwesome.apple, color: UIColor.lightGray, type: .image)
    }
    
    func setLabel() {
        label.iconFont(size: 25, icon: FontAwesome.github)
    }
    
    func setImageView() {
        imageView.contentMode = .center
        imageView.iconFont(size: 25, icon: FontAwesome.ccvisa, color: #colorLiteral(red: 0.7700251937, green: 0.03786655143, blue: 0.1436689794, alpha: 1))
    }
    
    func setButton() {
        button.iconFont(size: 30, icon: FontAwesome.ccvisa, color: #colorLiteral(red: 0.7277297378, green: 0.1776980162, blue: 0.6334885955, alpha: 1))
    }

    func setTabBarItem() {
        _tabBarItem.iconFont(size: 25, icon: FontAwesome.weixin, color: #colorLiteral(red: 0, green: 0.5176470588, blue: 0, alpha: 1))
    }
}
