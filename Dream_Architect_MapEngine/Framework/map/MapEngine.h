//
//  MapEngine.h
//  Dream_Architect_MapEngine
//
//  Created by Dream on 2016/12/29.
//  Copyright © 2016年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapFactory.h"

//地图引擎(生产地图工厂)
@interface MapEngine : NSObject

//面向协议编程
-(id<IMapFactory>)getMapFactory;

@end
