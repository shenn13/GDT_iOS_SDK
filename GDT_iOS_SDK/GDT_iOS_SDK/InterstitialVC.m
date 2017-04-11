//
//  InterstitialVC.m
//  GDT_iOS_SDK
//
//  Created by shen on 17/4/11.
//  Copyright © 2017年 shen. All rights reserved.
//

#import "InterstitialVC.h"

@interface InterstitialVC ()

@end

@implementation InterstitialVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadAdGDTData];
    

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    button.center = self.view.center;
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor whiteColor]];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)buttonClicked{
    
    [self startShowAdMob];
}
//广点通广告加载
-(void)loadAdGDTData{
    _interstitialObj = [[GDTMobInterstitial alloc] initWithAppkey:GDT_APP_ID placementId:GDT_APP_CID];
    _interstitialObj.delegate = self;
    [_interstitialObj loadAd];

}
-(void)startShowAdMob{
    
    [_interstitialObj presentFromRootViewController:self];
    
}
#pragma mark  广点通广告---------
- (void)interstitialDidDismissScreen:(GDTMobInterstitial *)interstitial{
    [_interstitialObj loadAd];
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
