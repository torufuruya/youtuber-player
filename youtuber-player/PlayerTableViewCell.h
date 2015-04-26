//
//  PlayerTableViewCell.h
//  youtuber-player
//
//  Created by Toru Furuya on 2015/04/26.
//  Copyright (c) 2015年 toru.furuya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <HCYoutubeParser.h>
#import <MediaPlayer/MediaPlayer.h>

@interface PlayerTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnail;
@property (nonatomic) MPMoviePlayerController *player;
@property NSString *youtubeID;

- (void)playMovie:(NSString *)url;

@end
