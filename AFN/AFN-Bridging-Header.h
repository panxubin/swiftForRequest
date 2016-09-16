//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

//需要给swfit使用的oc的类的头文件,都要加在这个桥接文件中
//如果需要自定定义桥接文件,则需要在buildSetting中配置: Objective-c Bridging Header: `项目名/桥接文件名`
//在桥接文件中导入OC框架
#import "AFNetworking.h"

