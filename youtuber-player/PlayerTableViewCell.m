//
//  PlayerTableViewCell.m
//  youtuber-player
//
//  Created by Toru Furuya on 2015/04/26.
//  Copyright (c) 2015年 toru.furuya. All rights reserved.
//

#import "PlayerTableViewCell.h"

@implementation PlayerTableViewCell

- (void)awakeFromNib {
    // Initialization code
//    self.player = [MPMoviePlayerController new];
//    NSLog(@"%@", NSStringFromCGRect(self.frame));
//    self.player.view.frame = self.frame;
//    [self addSubview:self.player.view];
}

- (void)playMovie:(NSString *)url {
//    NSString *urlString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=%@", url];
//    NSDictionary *videos = [HCYoutubeParser h264videosWithYoutubeURL:[NSURL URLWithString:urlString]];
//    [self.player setContentURL:[NSURL URLWithString:videos[@"medium"]]];
//    [self.player prepareToPlay];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
