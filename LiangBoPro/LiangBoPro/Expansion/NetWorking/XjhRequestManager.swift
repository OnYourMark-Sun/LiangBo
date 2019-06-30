//
//  XjhRequestManager.swift
//  SmarketSwift
//
//  Created by mac on 2019/6/25.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import Foundation
import Alamofire

//请求方式
enum XjhMethodType {
    
    case get
    case post
}

class XjhRequestManager {
    
    class func request(_ type : XjhMethodType = .get, url : String, encoding : Bool = false, params : [String : Any]?, successBlock : @escaping(_ data : Any) ->(), failBlock : @escaping(_ error : XJhError) -> ()) {
        
        let method = type == .get ?HTTPMethod.get : HTTPMethod.post
        
        var urlStr = url
        if encoding {
            urlStr = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        }
        
        Alamofire.request(urlStr,method: method,parameters: params).responseJSON { (response) in
            
            if let json = response.result.value {
                
                print("Xjhdata： \(json)")
                
                successBlock(json)
            } else {
                
                if let httpResponse = response.response {
                    
                    failBlock(XJhError(code: httpResponse.statusCode, message: "不在状态。。。"))
                    
                } else {
                     failBlock(XJhError(code: -1004, message: "连接请求出现问题，请重试"))
                }
                
            }
            
        }
        
    }
    
}
