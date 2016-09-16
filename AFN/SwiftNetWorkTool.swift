//
//  SwiftNetWorkTool.swift
//  AFN
//
//  Created by aa on 16/9/9.
//  Copyright © 2016年 aa. All rights reserved.
//

import UIKit

class SwiftNetWorkTool: AFHTTPSessionManager {

    //创建一个单例
   static let shareTool = SwiftNetWorkTool()
    
    // get请求和post请求
    func request(urlstr : String, method : String, parameters : [String : AnyObject]?, callBack : (AnyObject?) -> ()) {
        
        //定义请求数据成功后用于返回数据的闭包，这是一个尾随闭包
        let success = {
            //参数用小括号包起来
            (task: NSURLSessionDataTask, responseObject: AnyObject?) -> Void in callBack(responseObject)
        }
        
        //定义请求数据失败后用于返回失败信息的闭包，同样也是一个尾随闭包
        let failure = {
            (task : NSURLSessionDataTask?, error : NSError) -> Void in
            print(error)
            callBack(nil)
        }
      
        //判断是GET方法，还是POST方法，再调用对应的方法，并将需要返回的数据通过闭包进行返回
        if method == "GET" {
            //解决bug时照着提示进行操作
            self.GET(urlstr, parameters: parameters, progress: nil, success: success, failure: failure)
        }
        
        if method == "POST" {
            self.POST(urlstr, parameters: parameters, progress: nil, success: success, failure: failure)
        }
    }
}
