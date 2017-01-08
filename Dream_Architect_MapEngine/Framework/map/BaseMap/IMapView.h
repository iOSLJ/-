//
//  IMapView.h
//  Dream_Architect_MapEngine
//
//  Created by Dream on 2016/12/29.
//  Copyright © 2016年 Tz. All rights reserved.
//

#import <UIKit/UIKit.h>

//地图协议
@protocol IMapView <NSObject>

-(instancetype)initWithFrame:(CGRect)frame;

//返回父类（父类引用指向子类的实力）
-(UIView*)getView;

@end
