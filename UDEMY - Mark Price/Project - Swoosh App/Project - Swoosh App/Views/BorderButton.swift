//
//  BorderButton.swift
//  Project - Swoosh App
//
//  Created by Rudrank Riyam on 14/06/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
