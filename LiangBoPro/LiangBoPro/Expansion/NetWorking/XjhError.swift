
//
//  XjhError.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/25.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import Foundation

struct XJhError : Error {
    let code : Int
    var message : String = "出现错误，稍后重试"
    
    
}
