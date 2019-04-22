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
        case CustomIconFont = "Custom IconFont"
        case FontAwesome
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView()
        }
    }
    
    let contents: [[Content]] = [[.UIExample], [.CustomIconFont, .FontAwesome]]
    
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
            let vc = ShowIconViewController()
            vc.iconFont = .FontAwesome
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tableView.indexPathForSelectedRow!
        switch segue.identifier {
        case "showUIExample"?:
            break
        case "showIconFont"?:
            let controller = segue.destination as! ShowIconViewController
            if indexPath.section == 1 {
                controller.iconFont = .FontAwesome
            } else {
                controller.iconFont = .custom
            }
        default:
            break
        }
    }
}



