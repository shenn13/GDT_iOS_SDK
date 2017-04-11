//
//  SplashVC.m
//  GDT_iOS_SDK
//
//  Created by shen on 17/4/11.
//  Copyright © 2017年 shen. All rights reserved.
//

#import "SplashVC.h"
#import "GDTSplashAd.h"


@interface SplashVC ()<GDTSplashAdDelegate>{
    
    GDTSplashAd *_splash;
}

@end

@implementation SplashVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _splash = [[GDTSplashAd alloc] initWithAppkey:GDT_APP_ID placementId:GDT_APP_KID];
    _splash.delegate = self;
    
//    if ([[UIScreen mainScreen] bounds].size.height >= 568.0f) {
//        _splash.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"LaunchImage-568h"]];
//    } else {
//        _splash.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"LaunchImage"]];
//    }
//    
    UIWindow *fK = [[UIApplication sharedApplication] keyWindow];
    _splash.fetchDelay = 5;
    
    [_splash loadAdAndShowInWindow:fK];
}


-(void)splashAdSuccessPresentScreen:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
}

-(void)splashAdFailToPresent:(GDTSplashAd *)splashAd withError:(NSError *)error{
    NSLog(@"%s%@",__FUNCTION__,error);
}

-(void)splashAdClicked:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
}

-(void)splashAdApplicationWillEnterBackground:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
}

-(void)splashAdWillClosed:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
}

-(void)splashAdClosed:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
    _splash = nil;
}

- (void)splashAdWillPresentFullScreenModal:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
}

- (void)splashAdDidPresentFullScreenModal:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
}

- (void)splashAdWillDismissFullScreenModal:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
}
-(void)splashAdDidDismissFullScreenModal:(GDTSplashAd *)splashAd{
    NSLog(@"%s",__FUNCTION__);
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
