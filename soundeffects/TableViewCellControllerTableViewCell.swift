//
//  TableViewCellControllerTableViewCell.swift
//  soundeffects
//
//  Created by liqi on 20/09/19.
//  Copyright © 2019 liqi. All rights reserved.
//

import UIKit

class TableViewCellControllerTableViewCell: UITableViewCell {

    var delegate:SettingControllerDelegate?
    
    @IBOutlet weak var myKeyColor: UIView!
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mySwitch: UISwitch!
    @IBAction func switchSound(_ sender: UISwitch) {
        var indexPath = (self.superview as! UITableView).indexPath(for: self)
        delegate?.switchSound(target:indexPath!.row,newValue:sender.isOn)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.delegate = appDelegate.viewController
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
