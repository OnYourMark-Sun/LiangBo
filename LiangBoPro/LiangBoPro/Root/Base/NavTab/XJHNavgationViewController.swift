//
//  XJHNavgationViewController.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/20.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit

class XJHNavgationViewController: UINavigationController,UIGestureRecognizerDelegate {

    override var prefersStatusBarHidden: Bool{
    return false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var textAttrr:NSMutableDictionary = NSMutableDictionary()
        
        textAttrr[NSAttributedString.Key.foregroundColor] = UIColor.white
        textAttrr[NSAttributedString.Key.font] = UIFont.boldSystemFont(ofSize: 18)
        
        navigationBar.titleTextAttributes = textAttrr as? [NSAttributedString.Key : Any]
        
        //侧滑返回手势
        if self.responds(to: #selector(getter: interactivePopGestureRecognizer)) {
            
            self.interactivePopGestureRecognizer?.delegate = self
            
        }
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        super.pushViewController(viewController, animated: true)
        if viewControllers.count > 1 {
            
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage(named: "main_back"), style: .plain, target: self, action: #selector(backAction))
            
        }
    }
    
    //侧滑返回事件
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        if gestureRecognizer == self.interactivePopGestureRecognizer {
        
        if viewControllers.count < 2 || visibleViewController == viewControllers.first  {
            return false
        }
    }
    return true
    }
    
    //返回事件
    @objc func backAction() {
        
        self.popViewController(animated: true)
        
    }

   
}
