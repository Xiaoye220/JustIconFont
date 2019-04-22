//
//  UIExampleViewController.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import UIKit
import JustIconFont

class UIExampleViewController: UIViewController {

    @IBOutlet weak var barButtonItem: UIBarButtonItem!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var leftTabBarItem: UITabBarItem!
    @IBOutlet weak var rightTabBarItem: UITabBarItem!

    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var barButtonItem2: UIBarButtonItem!
    
    @IBOutlet weak var customIconFont1: UILabel!
    @IBOutlet weak var customIconFont2: UILabel!
    @IBOutlet weak var customIconFont3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setBarButtonItem()
        setLabel()
        setImageView()
        setButton()
        setTabBarItem()
        setCustomIconFont()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setBarButtonItem() {
        barButtonItem.iconFont(size: 25, icon: FontAwesome.Brands.apple, color: #colorLiteral(red: 0.4404723644, green: 0.2396078408, blue: 0.6823841929, alpha: 1), type: .image)
        
        barButtonItem2.iconFont(size: 25, icon: FontAwesome.Brands.apple, color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), type: .title)
    }
    
    func setLabel() {
        label.iconFont(size: 25, icon: FontAwesome.Brands.github)
    }
    
    func setImageView() {
        // UIImage size is 39 * 30
        imageView.contentMode = .center
        imageView.image = UIImage.iconFont(fontSize: 30, icon: FontAwesome.Brands.ccVisa, color: #colorLiteral(red: 0.7700251937, green: 0.03786655143, blue: 0.1436689794, alpha: 1))
        
        // UIImage size is 30 * 30
        imageView2.contentMode = .center
        imageView2.image = UIImage.iconFont(imageSize: CGSize(width: 30, height: 30), icon: FontAwesome.Brands.ccVisa, color: #colorLiteral(red: 0.7700251937, green: 0.03786655143, blue: 0.1436689794, alpha: 1))
    }
    
    func setButton() {
        button.iconFont(size: 30, icon: FontAwesome.Brands.weixin, color: #colorLiteral(red: 0.7277297378, green: 0.1776980162, blue: 0.6334885955, alpha: 1))
    }

    func setTabBarItem() {
        leftTabBarItem.image = UIImage.iconFont(fontSize: 25, icon: FontAwesome.Brands.chrome)
        leftTabBarItem.selectedImage = UIImage.iconFont(fontSize: 25, icon: FontAwesome.Brands.chrome, color: #colorLiteral(red: 0, green: 0.5176470588, blue: 0, alpha: 1)).withRenderingMode(.alwaysOriginal)
        leftTabBarItem.title = FontAwesome.Brands.chrome.rawValue
        
        rightTabBarItem.image = UIImage.iconFont(fontSize: 25, icon: FontAwesome.Brands.firefox)
        rightTabBarItem.selectedImage = UIImage.iconFont(fontSize: 25, icon: FontAwesome.Brands.firefox, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)).withRenderingMode(.alwaysOriginal)
        rightTabBarItem.title = FontAwesome.Brands.firefox.rawValue
    }
    
    func setCustomIconFont() {
        customIconFont1.iconFont(size: 25, icon: MyIconFont.clock, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        customIconFont2.iconFont(size: 30, icon: MyIconFont.feedback, color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        customIconFont3.iconFont(size: 35, icon: MyIconFont.shoppingCart, color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
}
