//
//  ViewController.swift
//  JustIconFont
//
//  Created by yezengfeng on 04/22/2019.
//  Copyright (c) 2019 yezengfeng. All rights reserved.
//

import UIKit
import JustIconFont

class RootViewController: UIViewController {

    enum Content: String {
        case UIExample = "UI Example"
        case MyIconFont = "Custom IconFont"
        case FontAwesome_Solid = "FontAwesome Solid"
        case FontAwesome_Brands = "FontAwesome Brands"
        case FontAwesome_Regular = "FontAwesome Regular"
        case Iconic
        case Ionicons
        case MaterialIcons
        case Octicons
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView()
        }
    }
    
    let contents: [[Content]] = [[.UIExample],
                                 [.MyIconFont],
                                 [.FontAwesome_Solid, .FontAwesome_Brands, .FontAwesome_Regular, .Iconic, .Ionicons, .MaterialIcons, .Octicons]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension RootViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell")
        if(cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell.textLabel?.text = contents[indexPath.section][indexPath.row].rawValue
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let content = contents[indexPath.section][indexPath.row]
        
        switch content {
        case .UIExample:
            let storyBorad = UIStoryboard(name: "Main", bundle: Bundle.main)
            let vc = storyBorad.instantiateViewController(withIdentifier: "UIExampleViewController")
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            let vc = OpenSourceIconViewController()
            vc.showContent = content
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}



