//
//  ViewController.swift
//  xylophone
//
//  Created by Zoxi Lee on 2019/7/6.
//  Copyright © 2019 fishtail organ. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func buttonBeenPressed(_ sender: UIButton) {
        
        print(sender.tag)
        
        let url = Bundle.main.url(forResource: "note\(sender.tag)" , withExtension: "wav")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            player.play()
        }catch{
            print(error)
        }
    }
    
    //let button:UIButton = UIButton()
    
    
    
    
   

}

