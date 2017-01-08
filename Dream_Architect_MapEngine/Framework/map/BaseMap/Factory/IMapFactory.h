//
//  IMapFactory.h
//  Dream_Architect_MapEngine
//
//  Created by Dream on 2016/12/29.
//  Copyright © 2016年 Tz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IMapView.h"

//当前我们的地图工厂只支持创建地图视图
@protocol IMapFactory <NSObject>

-(id<IMapView>)getMapViewWithFrame:(CGRect)frame;

@end
