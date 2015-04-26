//
//  ViewController.m
//  youtuber-player
//
//  Created by Toru Furuya on 2015/04/26.
//  Copyright (c) 2015年 toru.furuya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDictionary *playerVars = @{
        @"playsinline": @1,
        @"autohide"   : @1,
        @"rel"        : @0,
        @"showinfo"   : @0,
    };
    [self.playerView loadWithVideoId:@"pNJb8WUQaGM" playerVars:playerVars];
    self.playerView.delegate = self;
}

- (void)playerViewDidBecomeReady:(YTPlayerView *)playerView {
    [playerView playVideo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
