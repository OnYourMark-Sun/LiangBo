//
//  XjhProgressHUD.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/25.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit
import PKHUD
class XjhProgressHUD: NSObject {

    class func show()  {
        HUD.show(.progress)
    }
    class func hide()  {
        HUD.hide()
    }
    
    class func showSuccess(message : String, view : UIView)  {
        HUD.flash(.label(message), onView: view, delay: 1.5, completion: nil)
    }
    
    class func showSuccess(message : String) {
        HUD.flash(.label(message), delay:1.5, completion: nil)
    }
    
    class func showError(message : String, view : UIView) {
        
        HUD.flash(.label(message), onView: view, delay: 1.5, completion: nil)
        
    }
    
    class func showError(message : String) {
        
        HUD.flash(.label(message), delay: 1.5, completion: nil)
    }
    
    
}
