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
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var customIconFont1: UILabel!
    @IBOutlet weak var customIconFont2: UILabel!
    @IBOutlet weak var customIconFont3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setupBarButtonItem()
        setupLabel()
        setupImageView()
        setupButton()
        setupTabBarItem()
        setupCustomIconFont()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupBarButtonItem() {
        barButtonItem.iconFont(FontAwesome.Brands.apple, fontSize: 25)
        
        barButtonItem2.iconFont(FontAwesome.Brands.alipay, fontSize: 25, color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
    }
    
    func setupLabel() {
        label.iconFont(FontAwesome.Brands.github, fontSize: 25)
    }
    
    func setupImageView() {
        // UIImage size is 39 * 30
        imageView.contentMode = .center
        imageView.image = UIImage.iconFont(FontAwesome.Brands.ccVisa, fontSize: 30, color: #colorLiteral(red: 0.7700251937, green: 0.03786655143, blue: 0.1436689794, alpha: 1))
        
        // UIImage size is 30 * 30
        imageView2.contentMode = .center
        imageView2.iconFont(FontAwesome.Brands.ccVisa, color: #colorLiteral(red: 0.7700251937, green: 0.03786655143, blue: 0.1436689794, alpha: 1))
    }
    
    func setupButton() {
        button.setTitle(nil, for: .normal)
        button.iconFont(Octicons.logoGithub, fontSize: 30, color: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
        button.iconFont(Octicons.logoGithub, fontSize: 30, color: #colorLiteral(red: 0.7277297378, green: 0.1776980162, blue: 0.6334885955, alpha: 1), for: .highlighted)
        
        button2.setTitle(nil, for: .normal)
        button2.iconFont(FontAwesome.Brands.weibo, fontSize: 30)
        
    }

    func setupTabBarItem() {
        leftTabBarItem.title = "solid"
        leftTabBarItem.iconFont(FontAwesome.Solid.addressBook, fontSize: 25)
        leftTabBarItem.iconFont(FontAwesome.Solid.addressBook, fontSize: 25, color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: .selected)
        
        rightTabBarItem.title = "regular"
        rightTabBarItem.iconFont(FontAwesome.Regular.addressBook, fontSize: 25)
        rightTabBarItem.iconFont(FontAwesome.Regular.addressBook, fontSize: 25, color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), for: .selected)
    }
    
    func setupCustomIconFont() {
        customIconFont1.iconFont(MyIconFont.clock, fontSize: 25, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        customIconFont2.iconFont(MyIconFont.feedback, fontSize: 30, color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        customIconFont3.iconFont(MyIconFont.shoppingCart, fontSize: 35, color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
}
