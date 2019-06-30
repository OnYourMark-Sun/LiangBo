
//
//  XjhAlertController.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/25.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit

class XjhAlertController: UIAlertController {

    ///显示在Root视图上
    static func getRootVC() -> AppDelegate {
        
        let rootVC = UIApplication.shared.delegate as! AppDelegate
        rootVC.window?.rootViewController = XJHBaseViewController()
        
        return rootVC
    }
    
    ///alert:一个按钮-VC
    static func showAlertOneAction(message : String, title : String = "提示", actionText : String = "确定", vc : UIViewController, XjhAction : @escaping() ->()) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:actionText, style: .default, handler: { (action) in
            
            XjhAction()
            
        }))
        
        vc.present(alert,animated: true)
        
    }
    
    ///alert:两个按钮-VC
    static func showAlertTwoAction(message : String, title : String = "提示", actionTextOne : String = "取消",actionTextTwo : String = "确定", vc : UIViewController, XjhActionOne : @escaping() ->(),XjhActionTwo : @escaping() ->()) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:actionTextOne, style: .cancel, handler: { (action) in
            
            XjhActionOne()
            
        }))
        
        alert.addAction(UIAlertAction(title:actionTextTwo, style: .default, handler: { (action) in
            
            XjhActionTwo()
            
        }))
        
        
        vc.present(alert,animated: true)
        
    }
    
    
    ///alert: Sheet
    static func showAlertSheet(title : String,message : String = "", actions : Array<String>, vc : UIViewController, redtypeShow : Int = 1000, alertAction : @escaping(_ title : String) ->() ) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    
        for index in 0...actions.count-1 {
            
            let str = actions[index]
            
            alert.addAction(UIAlertAction(title: str, style: (index == redtypeShow) ? .cancel : .default, handler: { (action) in
                
                if action.title != actions[actions.count-1]
                {
                    alertAction(action.title!)
                }
                
               
                
            }))
            
        }
        
        
         vc.present(alert,animated: true)
        
    }
  
}
