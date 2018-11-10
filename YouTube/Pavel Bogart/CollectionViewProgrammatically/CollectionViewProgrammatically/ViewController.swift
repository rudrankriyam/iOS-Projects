//
//  ViewController.swift
//  CollectionViewProgrammatically
//
//  Created by Rudrank Riyam on 11/11/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let cellId = "cellId"
    
    let teams = [Team(image: "arsenal", name: "arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "M United"),
                 Team(image: "mc", name: "M City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham"),
                 Team(image: "arsenal", name: "arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "M United"),
                 Team(image: "mc", name: "M City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = UIColor.white
        navigationItem.title = "Categories"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        
        collectionView.register(TeamCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TeamCell
        cell.team = teams[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 2) - 15, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}
