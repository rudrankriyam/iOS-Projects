//
//  ViewController.swift
//  Project - Destini App
//
//  Created by Rudrank Riyam on 17/06/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    var storyIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
    
        if sender.tag == 1 && (storyIndex == 1 || storyIndex == 2) {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
        } else if sender.tag == 2 && storyIndex == 1 {
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 2
        } else if sender.tag == 1 && storyIndex == 3 {
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
        } else if sender.tag == 2 && storyIndex == 3 {
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
        } else if sender.tag == 2 && storyIndex == 2 {
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        }
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            restartButton.isHidden = false
        }
    }
    
    @IBAction func restartPressed(_ sender: UIButton) {
        restart()
    }
    
    func restart() {
        restartButton.isHidden = true
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        storyIndex = 1
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
}
