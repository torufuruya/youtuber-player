//
//  ViewController.h
//  youtuber-player
//
//  Created by Toru Furuya on 2015/04/26.
//  Copyright (c) 2015年 toru.furuya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <youtube-ios-player-helper/YTPlayerView.h>

@interface ViewController : UIViewController<YTPlayerViewDelegate>

@property (weak, nonatomic) IBOutlet YTPlayerView *playerView;

@end

