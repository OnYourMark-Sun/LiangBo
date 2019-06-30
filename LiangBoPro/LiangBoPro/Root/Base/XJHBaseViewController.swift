//
//  XJHBaseViewController.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/24.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit
import NVActivityIndicatorView
import PKHUD
import Hero
class XJHBaseViewController: UIViewController,NVActivityIndicatorViewable {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            
            self.stopAnimating()
        })
        
        let screenEdgePanGR = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(x_handlePan(gr:)))
        screenEdgePanGR.edges = .left
        view.addGestureRecognizer(screenEdgePanGR)
        
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    @objc func x_handlePan(gr: UIPanGestureRecognizer){
        
        switch gr.state {
        case .began:
            hero.modalAnimationType = .pageIn(direction: .right)
            dismiss(animated: true, completion: nil)
            
        case .changed:
            let progress = gr.translation(in: nil).x / view.bounds.width
            Hero.shared.update(progress)
            
        default:
            if (gr.translation(in: nil).x + gr.velocity(in: nil).x) / view.bounds.width > 0.5 {
                Hero.shared.finish()
            } else{
                Hero.shared.cancel()
            }
        }
        
    }
    
    
    func transitionVC(vc:UIViewController,modalType: HeroDefaultAnimationType){
        
        vc.hero.modalAnimationType = modalType
        DispatchQueue.main.async(execute: {
            
            self.present(vc,animated: true,completion: nil)
        })
    }

    
    ///隐藏： 加载等待
    func hideProgressHUD() {
        HUD.hide()
    }
    
    ///创建右侧按钮
    func creatRightButtonItem(image : UIImage?, orText : String?, target : Any?, action : Selector?) {
        
        let buttonItem : UIBarButtonItem
        
        if image != nil {
            
            buttonItem = UIBarButtonItem.init(image: image, style: .plain, target: target, action: action)
            
        } else {
            buttonItem = UIBarButtonItem.init(title: orText, style: .plain, target: target, action: action)
        }
        
        self.navigationItem.rightBarButtonItem = buttonItem
        
    }
    
}
