//
//  ViewController.m
//  AFN
//
//  Created by panxubin on 16/9/8.
//  Copyright © 2016年 panxubin. All rights reserved.
//  https://httpbin.org/get?name=xiaoming

#import "ViewController.h"
#import "AFNetworking.h"
#import "NetWorkTool.h"
#import "AFN-swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //用系统原生的afn发送网络请求
//    [self loadDataForTool];
    
    [self loadDataForSwift];
}

-(void)loadData
{
  [[AFHTTPSessionManager manager]GET:@"https://httpbin.org/get?name=xiaoming" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
      
      NSLog(@"%@",responseObject);
      
  } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
      NSLog(@"%@",error);
  }];
    
}


//使用自己创建的工具类发送请求
-(void)loadDataForTool
{
    [[NetWorkTool shareNetWorkTool]retuest:@"https://httpbin.org/get?name=xiaoming" method:@"GET" parameters:nil callBack:^(id responsnose) {
        NSLog(@"%@",responsnose);
    }];

}

//只要在上面导入swift头文件，就能实现数据的保存和加载
-(void)loadDataForSwift
{
    
    //使用的仍然是OC的写法
   [[SwiftNetWorkTool shareTool] request:@"https://httpbin.org/get?name=xiaoming" method:@"GET" parameters:nil callBack:^(id _Nullable responseObject) {
       NSLog(@"%@",responseObject);
   }];

}





@end
