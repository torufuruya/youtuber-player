//
//  ViewController.h
//  youtuber-player
//
//  Created by Toru Furuya on 2015/04/26.
//  Copyright (c) 2015年 toru.furuya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <HCYoutubeParser/HCYoutubeParser.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

