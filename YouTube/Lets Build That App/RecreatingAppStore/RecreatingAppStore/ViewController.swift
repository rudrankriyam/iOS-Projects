//
//  ViewController.swift
//  RecreatingAppStore
//
//  Created by Rudrank Riyam on 30/10/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

let cellId = "cellId"

class FeaturedAppsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
    }

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }

}

