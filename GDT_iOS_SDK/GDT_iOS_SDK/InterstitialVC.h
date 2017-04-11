//
//  InterstitialVC.h
//  GDT_iOS_SDK
//
//  Created by shen on 17/4/11.
//  Copyright © 2017年 shen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GDTMobInterstitial.h"

@interface InterstitialVC : UIViewController<GDTMobInterstitialDelegate>{
    GDTMobInterstitial *_interstitialObj;
}
@end
