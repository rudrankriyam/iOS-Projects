//
//  ViewController.swift
//  UICollectionViewProgrammatically
//
//  Created by Rudrank Riyam on 28/10/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController {
    
    let customCellIdentifier = "customCellIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.darkGray
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentifier)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let customCell =  collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath)
        
        return customCell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
}

class CustomCell: UICollectionViewCell {
        
}


