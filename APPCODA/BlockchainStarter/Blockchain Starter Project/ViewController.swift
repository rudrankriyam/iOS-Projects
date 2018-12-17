//
//  ViewController.swift
//  Blockchain Starter Project
//
//  Created by Sai Kambampati on 4/29/18.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueAmount: UITextField!
    @IBOutlet weak var redAmount: UITextField!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func redMine(_ sender: Any) {
        
    }
    
    @IBAction func blueMine(_ sender: Any) {
        
    }
    
    @IBAction func redSend(_ sender: Any) {
        
    }
    
    @IBAction func blueSend(_ sender: Any) {
        
    }
    
}

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
