//
//  ViewController.swift
//  soundeffects
//
//  Created by liqi on 20/09/19.
//  Copyright © 2019 liqi. All rights reserved.
//

import UIKit
import AVFoundation

var switchFlg = [true,true,true,true,true]

class ViewController: UIViewController,SettingControllerDelegate {
    
    @IBOutlet weak var key1: UIButton!
    @IBOutlet weak var key2: UIButton!
    @IBOutlet weak var key3: UIButton!
    @IBOutlet weak var key4: UIButton!
    @IBOutlet weak var key5: UIButton!
    
    func switchSound(target: Int, newValue: Bool) {
        switch target {
        case 0:
            self.key1.isEnabled = newValue
        case 1:
            self.key2.isEnabled = newValue
        case 2:
            self.key3.isEnabled = newValue
        case 3:
            self.key4.isEnabled = newValue
        case 4:
            self.key5.isEnabled = newValue
        default:
            break
        }
    }
    

    var musicEffect:AVAudioPlayer = AVAudioPlayer()
    
    let musicFile1 = Bundle.main.path(forResource: "dou", ofType:".mp3")
    let musicFile2 = Bundle.main.path(forResource: "re", ofType:".mp3")
    let musicFile3 = Bundle.main.path(forResource: "mi", ofType:".mp3")
    let musicFile4 = Bundle.main.path(forResource: "fa", ofType:".mp3")
    let musicFile5 = Bundle.main.path(forResource: "so", ofType:".mp3")

    
    
    @IBAction func keypressed(_ sender: UIButton) {
        print(sender.tag)
        play(key:sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.viewController = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        self.key1.isEnabled = switchFlg[0]
    }
    
    func play(key:Int){
        
        do{
            var musicFile:String=musicFile1!
            switch key {
            case 0:
                musicFile=musicFile1!
            case 1:
                musicFile=musicFile2!
            case 2:
                musicFile=musicFile3!
            case 3:
                musicFile=musicFile4!
            case 4:
                musicFile=musicFile5!
            default:
                break
            }
            
            try musicEffect = AVAudioPlayer(contentsOf:URL(fileURLWithPath:musicFile))
        }
        catch{
            print(error)
        }
        
        musicEffect.play()
    }
    
}

