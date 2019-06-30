
//
//  XJHAppExtension.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/24.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit

//快捷方法
class XjhFunc: NSObject {
    
/*系统  */
    ///userDefaul 存取
    class func getUserDefaults(key : String) -> AnyObject {
        
        return UserDefaults.standard.object(forKey: key) as AnyObject
        
        
    }
    
    ///url\int\float\double\..
    class func setUserDefaults(key : String, value : AnyObject) {
        return UserDefaults.standard.set(value, forKey: key)
    }
/*自定义  */
    ///获取当前时间戳、
    class func timeNowTimeStamp() -> Int{
        
        let timeInterval: TimeInterval = Date.timeIntervalBetween1970AndReferenceDate
        return Int(timeInterval)
    }
    ///时间戳 转时间
    class func timeStampToString(timeStamp : Double, timeType : TimeTypes) -> String {
        
        let dfmatter = DateFormatter()
        
        switch timeType {
        case .Time_YMd_En:
            dfmatter.dateFormat = "yyyy年MM月dd日"
            
        case .Time_Y_M_d:
            dfmatter.dateFormat = "yyyy-MM-dd"
            
        case .Time_Y_M_dHMS:
            dfmatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            
        case .Time_HMS:
            dfmatter.dateFormat = "HH:mm:ss"
            
        default:
            dfmatter.dateFormat = "HH:mm:ss"
        }
        
        let date = Date(timeIntervalSince1970: timeStamp)
        return dfmatter.string(from: date)
        
    }
    
    ///返回两位小数的string
    class func changeTwoPointDouble(double : Double) -> Double {
        return double.roundTo(places: 2)
        
    }
}



extension Double {
    
    ///保留x位小数的
    
    func roundTo(places:Int) -> Double {
        
        let divisor = pow(10.0, Double(places))
        
        return (self * divisor).rounded() / divisor
        
    }
    
}

//颜色的扩展
extension UIColor {
    
    ///随机色
    class func randomColor() -> UIColor {
        
        let r = arc4random() % 255
        let g = arc4random() % 255
        let b = arc4random() % 255
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 1)
    }
    
    ///返回16进制的颜色
    class func hexColor(rgbValue:Int) -> UIColor {
        
        return rgb(r: CGFloat((rgbValue & 0xFF000) >> 16), g: CGFloat((rgbValue & 0x00FF00)>>8), b: CGFloat(rgbValue & 0x0000FF))
    }
    
    ///返回rgb alpha=1.0
    class func rgb(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
        
        return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: 1.0)
    }
    
    ///返回rgba alpha=a
    class func rgba(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
        
        return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
    }
    
    
}

//uiview 的扩展
extension UIView{
    
    ///圆角
    class func XViewRadius(view : UIView, radius : CGFloat) {
        
        view.layer.cornerRadius =  radius
        view.layer.masksToBounds = true
        
    }
    
    ///边框
    class func XViewBord(view : UIView, color : UIColor, width : CGFloat) {
        
        view.layer.borderColor = color.cgColor
        view.layer.borderWidth = width
        
    }
    
}
