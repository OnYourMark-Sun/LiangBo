//
//  LBGetDataList.swift
//  LiangBoPro
//
//  Created by xujiahui on 2019/6/30.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit

class LBGetDataList: NSObject {

    
    //解析 musicList 文件获得 数据
    func GetDataList() -> Array<Any>{
    
    let path = Bundle.main.path(forResource: "MusicList", ofType: "plist")
    let shops = NSArray(contentsOfFile: path!) ?? []
    
        return Array(shops)
    }
    
    
    
}
