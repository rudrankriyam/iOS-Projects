//
//  Models.swift
//  RecreatingAppStore
//
//  Created by Rudrank Riyam on 16/11/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    var name: String?
    var app: [App]?
}

class App: NSObject {
    var name: String?
    var category: String?
    var price: NSNumber?
    var id: NSNumber?
    var imageName: String?
}
