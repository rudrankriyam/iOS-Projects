//
//  Block.swift
//  Blockchain Starter Project
//
//  Created by Rudrank Riyam on 17/12/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class Block {
    // Enter the logic for the Block here
    
    var hash: String!
    var data: String!
    var previousHash: String!
    var index: Int!
    
    func generateHash() -> String {
        return NSUUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
}
