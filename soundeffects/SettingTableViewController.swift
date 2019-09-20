//
//  SettingTableViewController.swift
//  soundeffects
//
//  Created by liqi on 20/09/19.
//  Copyright © 2019 liqi. All rights reserved.
//

import UIKit

class SettingTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var deleget:SettingControllerDelegate?
    
    let keyColors = [UIColor.red,UIColor.black,UIColor.orange,UIColor.white,UIColor.blue]
    let keyNames = ["Key1","Key2","Key3","Key4","Key5"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (keyColors.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for:indexPath) as! TableViewCellControllerTableViewCell
        
//        cell.myKeyColor.backgroundColor = keyColors[indexPath.row]
        cell.myLabel.text = keyNames[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SettingTableViewController is loaded!")
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.deleget = appDelegate.viewController
    }
    

   
}
