//
//  ProjectorPageViewController.swift
//  CarouselUIPageViewController
//
//  Created by Rudrank Riyam on 29/10/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

class ProjectorPageViewController: UIPageViewController, UIPageViewControllerDataSource {


    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        view.backgroundColor = UIColor.black
        
        let frameViewController = FrameViewController()
        
        frameViewController.imageName = imageNames.first 
        
        let viewControllers = [frameViewController]
        setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
    }
    
    let imageNames = ["puppy1", "puppy2", "puppy3"]
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentImageName = (viewController as! FrameViewController).imageName
        let currentIndex = imageNames.index(of: currentImageName!)
        
        if currentIndex! < imageNames.count - 1 {
            let frameViewController = FrameViewController()
            frameViewController.imageName = imageNames[currentIndex! + 1]
            return frameViewController
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentImageName = (viewController as! FrameViewController).imageName
        let currentIndex = imageNames.index(of: currentImageName!)
        
        if currentIndex! > 0 {
            let frameViewController = FrameViewController()
            frameViewController.imageName = imageNames[currentIndex! - 1]
            return frameViewController
        }
        return nil
    }
}
