//
//  MapEngine.m
//  Dream_Architect_MapEngine
//
//  Created by Dream on 2016/12/29.
//  Copyright © 2016年 Tz. All rights reserved.
//

#import "MapEngine.h"
#import "BaiduMapFactory.h"

@implementation MapEngine

//面向协议编程
//修改框架进行配置(动态配置)
-(id<IMapFactory>)getMapFactory{
    return [[BaiduMapFactory alloc] init];
//    return [[GaodeMapFactory alloc] init];
}





@end
