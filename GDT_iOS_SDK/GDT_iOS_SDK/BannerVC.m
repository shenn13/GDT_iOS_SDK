//
//  BannerVC.m
//  GDT_iOS_SDK
//
//  Created by shen on 17/4/11.
//  Copyright © 2017年 shen. All rights reserved.
//

#import "BannerVC.h"
#import "GDTMobBannerView.h"


#import <CoreLocation/CLLocationManagerDelegate.h>
#import <StoreKit/StoreKit.h>

@interface BannerVC ()<GDTMobBannerViewDelegate>{
    GDTMobBannerView *_bannerView;
}

@end

@implementation BannerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        _bannerView = [[GDTMobBannerView alloc] initWithFrame:CGRectMake(0,0,kScreenWidth,GDTMOB_AD_SUGGEST_SIZE_728x90.height)
                                                      appkey:GDT_APP_ID placementId:GDT_APP_BID];
    } else {
        _bannerView = [[GDTMobBannerView alloc] initWithFrame:CGRectMake(0,0,kScreenWidth,GDTMOB_AD_SUGGEST_SIZE_320x50.height)
                                                      appkey:GDT_APP_ID placementId:GDT_APP_BID];
    }
    
    
    if (IS_OS_7_OR_LATER) {
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.edgesForExtendedLayout = UIRectEdgeBottom | UIRectEdgeLeft | UIRectEdgeRight;
    }

    _bannerView.delegate = self;
    _bannerView.currentViewController = [[UIApplication sharedApplication] keyWindow].rootViewController;
    _bannerView.isAnimationOn = YES;
    _bannerView.showCloseBtn = YES;
    _bannerView.isGpsOn = YES;
    [_bannerView loadAdAndShow];
    [self.view addSubview:_bannerView];
    
}

-(void)bannerViewDidDismissFullScreenModal{
    NSLog(@"%s",__FUNCTION__);
}

-(void)bannerViewWillDismissFullScreenModal
{
    NSLog(@"%s",__FUNCTION__);
}

-(void)bannerViewWillPresentFullScreenModal
{
    NSLog(@"%s",__FUNCTION__);
}

-(void)bannerViewDidPresentFullScreenModal
{
    NSLog(@"%s",__FUNCTION__);
}

-(void)dealloc
{
    NSLog(@"bannervc dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
