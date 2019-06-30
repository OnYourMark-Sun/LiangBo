//
//  XJHTabbarController.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/24.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit



class XJHTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.barTintColor = .black
        
        self.tabBar.tintColor = .white

        
        self.addChildrenViewController(viewController: LBHomeViewController.init(), title: "梁博", image: nil, selectedimg: nil)
        
        self.addChildrenViewController(viewController: LBOtherViewController.init(), title: "Other", image: nil, selectedimg: nil)
        
        self.addChildrenViewController(viewController: LBMeViewController.init(), title: "Me", image: nil, selectedimg: nil)
        
       
        
    }
    
    func addChildrenViewController(viewController : UIViewController, title : String, image : UIImage?, selectedimg : UIImage?) {
        
        viewController.tabBarItem.image = image
        viewController.tabBarItem.selectedImage = selectedimg
        viewController.title = title
        
        let nav = XJHNavgationViewController.init(rootViewController: viewController)
        
        self.addChild(nav)
        
    }
    
  
}
