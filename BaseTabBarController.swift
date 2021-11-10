//
//  BaseTabBarController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/28/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



class BaseTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewControllers = [
            createNavController(viewController: IntroController(), title: "Intro", imageName: "Intro Tab Bar Icon 2"), createNavController(viewController: CardInfoController(), title: "Card Info", imageName: "Card Info Icon"), createViewController(viewController: CardDataBaseViewController(), title: "Database", imageName: "Database Tab Bar Icon")
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
    fileprivate func createViewController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        
        let viewController = viewController
        viewController.view.backgroundColor = .white
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: imageName)
        return viewController
    }
    
    
    
    
}
