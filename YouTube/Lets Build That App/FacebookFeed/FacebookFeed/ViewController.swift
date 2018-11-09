//
//  ViewController.swift
//  FacebookFeed
//
//  Created by Rudrank Riyam on 09/11/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

let cellId = "cellId"
class FeedController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        collectionView?.backgroundColor = UIColor(white: 0.90, alpha: 1)
        
        collectionView?.alwaysBounceVertical = true
        
        navigationItem.title = "Facebook Feed"
        
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 400)
    }
}

class FeedCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        
        let attributedText = NSMutableAttributedString(string: "Mark Zuckerberg", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14)])
        
        attributedText.append(NSAttributedString(string: "\nDecember 18 • San Francisco • ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.rgb(red: 155, green: 161, blue: 171)]))
        
        let paragraphStyle = NSParagraphStyle()
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedText.string.count))
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "globe_small")
        attachment.bounds = CGRect.init(x: 0,y: -2,width: 12,height: 12)
        attributedText.append(NSAttributedString(attachment: attachment))
        
        label.attributedText = attributedText
        return label
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "zuckprofile")
        return imageView
    }()
    
    let statusTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Meanwhile, Beast turned to the dark side."
        return textView
    }()
    
    let statusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "zuckdog")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
 
    let likesCommentLabel: UILabel = {
        let label = UILabel()
        label.text = "500 Likes 50 Comments"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = UIColor.rgb(red: 155, green: 161, blue: 171)
        return label
    }()
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.rgb(red: 226, green: 228, blue: 232)
        return view
    }()
    
    let likeButton = FeedCell.buttonForTitle(title: "Like", imageName: "like")
    let commentButton = FeedCell.buttonForTitle(title: "Comment", imageName: "comment")
    let shareButton = FeedCell.buttonForTitle(title: "Share", imageName: "share")
    
    static func buttonForTitle(title: String, imageName: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.rgb(red: 143, green: 150, blue: 163), for: .normal)
        button.setImage(UIImage(named: imageName), for: .normal)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }
    
    
    func setupViews() {
        backgroundColor = UIColor.white
        
        addSubview(nameLabel)
        addSubview(profileImageView)
        addSubview(statusTextView)
        addSubview(statusImageView)
        addSubview(likesCommentLabel)
        addSubview(dividerLineView)
        addSubview(likeButton)
        addSubview(commentButton)
        addSubview(shareButton)
        
        addContraintsWithFormat(format: "H:|-8-[v0(44)]-8-[v1]|", views: profileImageView, nameLabel)
        addContraintsWithFormat(format: "H:|-4-[v0]-4-|", views: statusTextView)
        addContraintsWithFormat(format: "H:|[v0]|", views: statusImageView)
        addContraintsWithFormat(format: "H:|-12-[v0]|", views: likesCommentLabel)
        addContraintsWithFormat(format: "H:|-12-[v0]-12-|", views: dividerLineView)
        addContraintsWithFormat(format: "H:|[v0(v2)][v1(v2)][v2]|", views: likeButton, commentButton, shareButton)
        
        addContraintsWithFormat(format: "V:|-12-[v0]-4-[v1(30)]", views: nameLabel, statusTextView)
        addContraintsWithFormat(format: "V:|-8-[v0(44)]-4-[v1(30)]-4-[v2]-8-[v3(24)]-8-[v4(0.4)][v5(44)]|", views: profileImageView, statusTextView, statusImageView, likesCommentLabel, dividerLineView, likeButton)
        addContraintsWithFormat(format: "V:[v0(44)]|", views: commentButton)
        addContraintsWithFormat(format: "V:[v0(44)]|", views: shareButton)

    }
}

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    func addContraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
