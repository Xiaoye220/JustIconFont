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
    
    @IBOutlet weak var leftTabBarItem: UITabBarItem!
    @IBOutlet weak var rightTabBarItem: UITabBarItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        setBarButtonItem()
        setLabel()
        setImageView()
        setButton()
        setTabBarItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setBarButtonItem() {
        barButtonItem.iconFont(size: 30, icon: FontAwesome.apple, color: #colorLiteral(red: 0.4404723644, green: 0.2396078408, blue: 0.6823841929, alpha: 1), type: .image)
    }
    
    func setLabel() {
        label.iconFont(size: 25, icon: FontAwesome.github)
    }
    
    func setImageView() {
        // image size is (39, 30)
        imageView.contentMode = .scaleToFill
        imageView.iconFont(size: 30, icon: FontAwesome.ccvisa, color: #colorLiteral(red: 0.7700251937, green: 0.03786655143, blue: 0.1436689794, alpha: 1))
    }
    
    func setButton() {
        button.iconFont(size: 30, icon: FontAwesome.ccvisa, color: #colorLiteral(red: 0.7277297378, green: 0.1776980162, blue: 0.6334885955, alpha: 1))
    }

    func setTabBarItem() {
        leftTabBarItem.iconFont(size: 25, icon: FontAwesome.chrome)
        leftTabBarItem.selectedIconFont(size: 25, icon: FontAwesome.chrome, color: #colorLiteral(red: 0, green: 0.5176470588, blue: 0, alpha: 1))
        leftTabBarItem.title = FontAwesome.chrome.rawValue
        
        rightTabBarItem.iconFont(size: 25, icon: FontAwesome.firefox)
        rightTabBarItem.selectedIconFont(size: 25, icon: FontAwesome.firefox, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        rightTabBarItem.title = FontAwesome.firefox.rawValue
    }
}
