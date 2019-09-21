//
//  descriptionViewController.swift
//  soundeffects
//
//  Created by liqi on 22/09/19.
//  Copyright © 2019 liqi. All rights reserved.
//

import UIKit

class descriptionViewController: UIViewController {

    var index = 0
    var descriptions = ["This is the description about key1.","This is the description about key2.","This is the description about key3.","This is the description about key4.","This is the description about key5."]

    @IBOutlet weak var descriptionLable: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        descriptionLable.text = descriptions[index]
    }
    
}
