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
    var descriptions = ["Switching to turn off the key1 sound.","Switching to turn off the key2 sound.","Switching to turn off the key3 sound.","Switching to turn off the key4 sound.","Switching to turn off the key5 sound."]

    @IBOutlet weak var descriptionLable: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        descriptionLable.text = descriptions[index]
    }
    
}
