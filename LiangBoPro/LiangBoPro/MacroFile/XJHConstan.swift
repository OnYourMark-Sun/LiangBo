//
//  XJHConstan.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/20.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit
// 设备判断。 尺寸。 颜色。

/*项目使用颜色  */
///主题颜色
let ThemeColor = UIColor.rgb(r: 29, g: 36, b: 51)

///背景色
let backgroundColor = UIColor.rgb(r: 236, g: 239, b: 241)

///（红）
let LongColor = UIColor.rgb(r: 223, g: 114, b: 78)

///绿色
let ShortColor = UIColor.rgb(r: 93, g: 165, b: 111)

///灰黄色
let YellowHui = UIColor.rgb(r: 254, g: 187, b: 8)

///亮灰色
let LightGray =  UIColor.rgb(r: 71, g: 93, b: 114)

///橘黄色
let Orange = UIColor.rgb(r: 243, g: 104, b: 25)

///灰橘黄
let OrangeGray = UIColor.rgb(r: 229, g: 140, b: 49)


/* 尺寸 */
///屏宽
let XjhSizeWidth = UIScreen.main.bounds.size.width

///屏高
let XjhSizeHeight = UIScreen.main.bounds.size.height

///导航栏 + 状态栏
let XjhSizeNav_topH = (XjhDevice.is_iPhoneXMax() ? 88.0 : 64.0)

///工具栏 高度
let XjhSizeTab_H = (XjhDevice.is_iPhoneXMax() ? 83.0 : 49.0)

///X系列，上 安全区域
let XjhSizeNavMustAdd = (XjhDevice.is_iPhoneXMax() ? 34.0 :0)

///X系列，下 安全区域
let XjhSizeTabMustAdd = (XjhDevice.is_iPhoneXMax() ? 20.0 : 0)

///状态栏高度
let XjhSizeStatus_H = (XjhDevice.is_iPhoneXMax() ? 44.0 : 20.0)

//设备判断
class XjhDevice: NSObject {
    
    //4x
    class func is_iPhone4x() -> Bool {
        if (XjhSizeWidth == 320 && XjhSizeHeight == 480) {
            return true
        }
        return false
    }
    
    //5x
    class func is_iPhone5x() -> Bool {
        if (XjhSizeWidth == 320 && XjhSizeHeight == 568) {
            return true
        }
        return false
    }
    
    //6x 7x 8x
    class func is_iPhone6x7x8x() -> Bool {
        if (XjhSizeWidth == 375 && XjhSizeHeight == 667) {
            return true
        }
        return false
    }
    
    //plus
    class func is_iPhonePlus() -> Bool {
        if (XjhSizeWidth == 414 && XjhSizeHeight == 736) {
            return true
        }
        return false
    }
    
    //X
    class func is_iPhoneX() -> Bool {
        if (XjhSizeWidth == 375 && XjhSizeHeight == 812) {
            return true
        }
        return false
    }
    
    //X Max
    class func is_iPhoneMax() -> Bool {
        if (XjhSizeWidth == 414 && XjhSizeHeight == 896) {
            return true
        }
        return false
    }
    // X & Max
    class func is_iPhoneXMax() -> Bool {
        if (is_iPhoneX() || is_iPhoneMax()) {
            return true
        }
        return false
    }
}

//尺寸
class XjhSize: NSObject {
    
    ///比例适配 宽
    class func IPHONEWidth(wid:Int) -> CGFloat {
        return (UIScreen.main.bounds.size.height) * CGFloat((wid / 750))
    }
    ///比例适配屏高
    class func IPHONEHight(wid:Int) -> CGFloat {
        return (UIScreen.main.bounds.size.height) * CGFloat((wid / 1334))
    }
   
}


