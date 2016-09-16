//
//  SwiftViewController.swift
//  AFN
//
//  Created by panxubin on 16/9/9.
//  Copyright © 2016年 panxubin. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //调用加载数据的方法
        loadData()

    }

    func loadData(){
        
        SwiftNetWorkTool.shareTool.GET("https://httpbin.org/get?name=xiaoming", parameters: ["age":20], progress: nil, success: { ( task, responseObject) in
            
                print(responseObject)
            }) { (task ,error) in
                
                print(error)
        }
    }
    
    func loadData2(){
        
        SwiftNetWorkTool.shareTool.POST("https://httpbin.org/get?name=xiaoming", parameters: ["age" : 20], progress: nil, success: { (task, responseObject) in
            
            print(responseObject)
            }) { (task , error) in
                
            print(error)
        }
    }
}
