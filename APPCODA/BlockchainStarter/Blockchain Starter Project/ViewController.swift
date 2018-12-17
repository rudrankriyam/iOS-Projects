//
//  ViewController.swift
//  Blockchain Starter Project
//
//  Created by Rudrank Riyam on 17/12/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueAmount: UITextField!
    @IBOutlet weak var redAmount: UITextField!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    let firstAccount = 1065
    let secondAccount = 0217
    let bitcoinChain = Blockchain()
    let reward = 100
    var accounts: [String: Int] = ["0000": 10000000]
    let invalidAlert = UIAlertController(title: "Invalid Transaction", message: "Please check the details of your transcation as we were unable to process this.", preferredStyle: .alert)
    
    func transaction(from: String, to: String, amount: Int, type: String) {
        
        if accounts[from] == nil {
            self.present(invalidAlert, animated: true, completion: nil)
            return
        } else if accounts[from]! - amount < 0 {
            self.present(invalidAlert, animated: true, completion: nil)
            return
        } else {
            accounts.updateValue(accounts[from]! - amount, forKey: from)
        }
        
        if accounts[to] == nil {
            accounts.updateValue(amount, forKey: to)
        } else {
            accounts.updateValue(accounts[to]! + amount, forKey: to)
        }
        
        if type == "genesis" {
            bitcoinChain.createGenesisBlock(data: "From: \(from); To: \(to); Amount: \(amount)BTC")
        } else if type == "normal" {
            bitcoinChain.createBlock(data: "From: \(from); To: \(to); Amount: \(amount)BTC")
        }
    }
    
    func chainState() {
        for i in 0...bitcoinChain.chain.count - 1 {
            print("\tBlock: \(bitcoinChain.chain[i].index!)\n\tHash: \(bitcoinChain.chain[i].hash!)\n\tPreviousHash:\(bitcoinChain.chain[i].previousHash!)\n\tData: \(bitcoinChain.chain[i].data!)")
        }
        
        redLabel.text = "Balance: \(accounts[String(describing: firstAccount)]!)BTC"
        blueLabel.text = "Balance: \(accounts[String(describing: secondAccount)]!)BTC"
        print(accounts)
        print(chainValidity())
    }
    
    func chainValidity() -> String {
        var isChainValid = true
        for i in 1...bitcoinChain.chain.count - 1 {
            if bitcoinChain.chain[i].previousHash != bitcoinChain.chain[i-1].hash {
                isChainValid = false
            }
        }
        return "Chain is valid: \(isChainValid)\n"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
