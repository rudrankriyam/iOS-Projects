//
//  ViewController.swift
//  Project - Hustle Mode App
//
//  Created by Rudrank Riyam on 08/06/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBackGround: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleModeLabel: UILabel!
    @IBOutlet weak var OnLabel: UILabel!
    
    var player: AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }

    
    @IBAction func powerButtonPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBackGround.isHidden = true
        powerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 280, width: 375, height: 138)
        }) { (finished) in
            self.hustleModeLabel.isHidden = false
            self.hustleModeLabel.isHidden = false
            self.OnLabel.isHidden = false
        }
    }
}
