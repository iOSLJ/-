//
//  BaiduMapView.m
//  Dream_Architect_MapEngine
//
//  Created by Dream on 2016/12/29.
//  Copyright © 2016年 Tz. All rights reserved.
//

#import "BaiduMapView.h"
//导入百度地图
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@interface BaiduMapView ()

@property (nonatomic) BMKMapView* mapView;

@end

//这个实现类：百度地图实现类
@implementation BaiduMapView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super init];
    if (self) {
        _mapView = [[BMKMapView alloc]initWithFrame:frame];
    }
    return self;
}

-(UIView*)getView{
    return _mapView;
}

@end
