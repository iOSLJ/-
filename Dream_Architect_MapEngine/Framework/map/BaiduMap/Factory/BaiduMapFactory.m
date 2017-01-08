//
//  BaiduMapFactory.m
//  Dream_Architect_MapEngine
//
//  Created by Dream on 2016/12/29.
//  Copyright © 2016年 Tz. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiduMapView.h"
//导入百度地图
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@interface BaiduMapFactory()

@property (nonatomic) BMKMapManager* mapManager;

@end


//百度地图工厂实现类
//初始化SDK，当我们工厂创建的时候，加载SDK
@implementation BaiduMapFactory

- (instancetype)init{
    self = [super init];
    if (self) {
        _mapManager = [[BMKMapManager alloc]init];
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
        BOOL ret = [_mapManager start:@"9hjuwbyYidI1ZmGCTUyjS4UMOzZWBzxX"  generalDelegate:nil];
        if (!ret) {
            NSLog(@"manager start failed!");
        }
    }
    return self;
}

-(id<IMapView>)getMapViewWithFrame:(CGRect)frame{
    return [[BaiduMapView alloc] initWithFrame:frame];
}

@end
