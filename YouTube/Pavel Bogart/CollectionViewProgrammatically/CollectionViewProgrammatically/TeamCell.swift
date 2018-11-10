//
//  TeamCell.swift
//  CollectionViewProgrammatically
//
//  Created by Rudrank Riyam on 11/11/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class TeamCell: UICollectionViewCell {
    
    var team: Team? {
        didSet {
            guard let teamImage = team?.image else { return }
            guard let teamName = team?.name else { return }
            
            teamImageView.image = UIImage(named: teamImage)
            teamNameLabel.text = teamName
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setCellShadow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let teamImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .white
        return imageView
    }()
    
    let teamNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    func setup() {
        self.backgroundColor = UIColor.white
        
        self.addSubview(teamImageView)
        self.addSubview(teamNameLabel)
        
        teamImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 100)
        teamNameLabel.anchor(top: teamImageView.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
}
