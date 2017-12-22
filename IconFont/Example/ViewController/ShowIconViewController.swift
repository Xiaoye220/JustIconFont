//
//  ShowIconViewController.swift
//  IconFont
//
//  Created by YZF on 2017/12/22.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import UIKit

class ShowIconViewController: UIViewController {

    enum IconFont {
        case FontAwesome
        case custom
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView()
        }
    }
    
    var iconFont: IconFont!
    
    var icons: [IconFontType] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch iconFont! {
        case .FontAwesome:
            icons = Array(EnumUtils.iterateEnum(FontAwesome.self))
        case .custom:
            icons = Array(EnumUtils.iterateEnum(CustomIconFont.self))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ShowIconViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: "cell")
        }
        let icon = icons[indexPath.row]
        cell.imageView?.image = UIImage.iconFont(imageSize: CGSize.init(width: 25, height: 25), icon: icon, color: #colorLiteral(red: 0.01186555624, green: 0.515492022, blue: 0.3117238581, alpha: 1))
        //cell.imageView?.image = UIImage.iconFont(size: 25, icon: icon, color: #colorLiteral(red: 0.01186555624, green: 0.515492022, blue: 0.3117238581, alpha: 1))

        cell.textLabel?.text = "\(icon)"
        
        for scalar in icon.unicode.unicodeScalars {
            cell.detailTextLabel?.text = "\\u" + String(format: "%0x", scalar.value)
        }
        
        return cell
    }
}
