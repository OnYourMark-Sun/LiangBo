
//
//  XJHSettingHeader.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/24.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import Foundation
import UIKit

/* 引用头文件 */
import SnapKit
import Kingfisher
import ESPullToRefresh
import BFKit
/*字符串  */
let xjhreloadTableViewAgain = "xjhTableViewreloadAgain"

/* 枚举  */

//RootViewDelegate
@objc enum XjhBaseViewClickType : Int {
    case BtnsView
    case FourImage
    case OtherView
}

//时间戳 时间 互转
@objc enum TimeTypes : Int {
    
    ///"yyyy年MM月dd日"
    case Time_YMd_En
    
    ///"yyyy-MM-dd"
    case Time_Y_M_d
    
    ///"yyyy-MM-dd HH:mm:ss"
    case Time_Y_M_dHMS
    
    ///"HH:mm:ss"
    case Time_HMS
    
}

@objc enum ClickTableViewType : Int {
    
    case ClickHomeTab
  
    case ClickOther
}

