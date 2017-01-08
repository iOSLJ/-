//
//  ViewController.m
//  Dream_Architect_MapEngine
//
//  Created by Dream on 2016/12/29.
//  Copyright © 2016年 Tz. All rights reserved.
//

#import "ViewController.h"
#import "BaiduMapFactory.h"
#import "MapEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //按照传统的写法：客户端使用的是具体的实现类，而不是协议，所以说当我们改变框架实现的时候，就很麻烦了，修改客户端的代码
    //调用百度地图
    //BaiduMapView alloc] init];
    //调用高德地图（POI检索、导航等等......）
    //GaodeMapView alloc] init];
    //让我们的开发更加轻松一些，所以我们通过工厂方法模式解决(非常方便)
    
    //工厂？百度工厂、高德工厂，不同的工厂创建不一样（不同工厂制造不一样）
    //测试百度地图
    //初始化SDK（初始化工厂）
    //    id<IMapFactory> factory = [[BaiduMapFactory alloc] init];
    //    //通过工厂创建MapView（地图视图）
    //    id<IMapView> mapView = [factory getMapViewWithFrame:self.view.frame];
    //    //绑定视图
    //    [self.view addSubview:[mapView getView]];
    
    //使用引擎
    MapEngine* mapEngine = [[MapEngine alloc] init];
    //通过引擎获取工厂
    id<IMapFactory> factory = [mapEngine getMapFactory];
    //通过工厂创建MapView（地图视图）
    id<IMapView> mapView = [factory getMapViewWithFrame:self.view.frame];
    //绑定视图
    [self.view addSubview:[mapView getView]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
