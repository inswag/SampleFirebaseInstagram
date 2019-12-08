//
//  TabBarViewController.swift
//  InstagramFirebaseSample
//
//  Created by 박인수 on 07/12/2019.
//  Copyright © 2019 inswag. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setupViewControllers()
    }
    
    func setupViewControllers() {
        // Menu : [Feed / Search / Photo / Like / Profile]
        let feedNaviController = customizedNaviController(selectedImg: "feed_selected", unselectedImg: "feed_unselected", rootViewController: FeedViewController(collectionViewLayout: UICollectionViewLayout()))
        
        let searchNaviController = customizedNaviController(selectedImg: "search_selected", unselectedImg: "search_unselected", rootViewController: SearchViewController(collectionViewLayout: UICollectionViewLayout()))
        
        let photoNaviController = customizedNaviController(selectedImg: "photo_selected", unselectedImg: "photo_unselected")
        
        let likeNaviController = customizedNaviController(selectedImg: "like_selected", unselectedImg: "like_unselected")
        
        let profileNaviController = customizedNaviController(selectedImg: "profile_selected", unselectedImg: "profile_unselected", rootViewController: ProfileViewController(collectionViewLayout: UICollectionViewLayout()))
        
        self.tabBar.tintColor = UIColor.black
        self.viewControllers = [feedNaviController,
                                searchNaviController,
                                photoNaviController,
                                likeNaviController,
                                profileNaviController]
//
//        guard let items = tabBar.items else { return }
//        for item in items {
//            item.imageInsets = UIEdgeInsets(top: 4, left: 0, bottom: 0, right: 0)
//        }
        
    }
    
    fileprivate func customizedNaviController(selectedImg: String, unselectedImg: String, rootViewController: UIViewController = UIViewController()) -> UINavigationController {
        let vc = rootViewController
        let naviVC = UINavigationController(rootViewController: vc)
        let unselected = UIImage(named: unselectedImg)
        let selected = UIImage(named: selectedImg)
        naviVC.tabBarItem.image = unselected
        naviVC.tabBarItem.selectedImage = selected
        return naviVC
    }
    
}

extension TabBarViewController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        let index = viewControllers?.firstIndex(of: viewController)
        if index == 2 {
            let layout = UICollectionViewLayout()
            let photoViewController = PhotoViewController(collectionViewLayout: layout)
            let naviController = UINavigationController(rootViewController: photoViewController)
            self.present(naviController, animated: true, completion: nil)
            return false
        }
        
        return true
    }
    
}
