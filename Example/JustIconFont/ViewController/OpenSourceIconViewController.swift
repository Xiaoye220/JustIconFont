//
//  ShowIconViewController.swift
//  IconFont
//
//  Created by YZF on 2017/12/22.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import UIKit
import JustIconFont

class OpenSourceIconViewController: UIViewController {
    
    var tableView: UITableView!
    
    var showContent: RootViewController.Content!
    
    var icons: [IconFontType] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        switch showContent! {
        case .FontAwesome_Solid:
            icons = FontAwesome.Solid.allCases
        case .FontAwesome_Brands:
            icons = FontAwesome.Brands.allCases
        case .FontAwesome_Regular:
            icons = FontAwesome.Regular.allCases
        case .Iconic:
            icons = Iconic.allCases
        case .Ionicons:
            icons = Ionicons.allCases
        case .MaterialIcons:
            icons = MaterialIcons.allCases
        case .Octicons:
            icons = Octicons.allCases
        case .MyIconFont:
            icons = MyIconFont.allCases
        default:
            break
        }
        
        let tableViewFrame = CGRect(x: 0, y: navHeight, width: screenWidth, height: screenHeight - navHeight)
        
        tableView = UITableView(frame: tableViewFrame, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        self.view.addSubview(tableView)
        
        self.navigationItem.title = showContent.rawValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension OpenSourceIconViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: "cell")
        }
        let icon = icons[indexPath.row]
        cell.imageView?.image = UIImage.iconFont(icon, imageSize: CGSize(width: 25, height: 25), color: #colorLiteral(red: 0.01186555624, green: 0.515492022, blue: 0.3117238581, alpha: 1))

        cell.textLabel?.text = "\(icon)"
        
        for scalar in icon.unicode.unicodeScalars {
            cell.detailTextLabel?.text = "\\u" + String(format: "%0x", scalar.value)
        }
        
        return cell
    }
}
