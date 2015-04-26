//
//  ViewController.m
//  youtuber-player
//
//  Created by Toru Furuya on 2015/04/26.
//  Copyright (c) 2015年 toru.furuya. All rights reserved.
//

#import "PlayerTableViewCell.h"
#import "ViewController.h"

@interface ViewController ()

@property NSString *cellId;
@property NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    self.cellId = NSStringFromClass([PlayerTableViewCell class]);
    [self.tableView registerNib:[UINib nibWithNibName:self.cellId bundle:nil] forCellReuseIdentifier:self.cellId];

    self.data = @[@"ZUwc468b6PE", @"6EoGVdgTJ5Y", @"I6HmlvQx64A", @"ZV2PMHhL3TM", @"8TRNkZT-WM8"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlayerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellId forIndexPath:indexPath];
    [HCYoutubeParser thumbnailForYoutubeID:self.data[indexPath.row]
                             thumbnailSize:YouTubeThumbnailDefaultHighQuality
                             completeBlock:^(UIImage *image, NSError *error)
    {
        if (error) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[error localizedDescription] delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
        // UIの変更はメインスレッド
        dispatch_async(dispatch_get_main_queue(), ^{
            cell.thumbnail.image = image;
        });
    }];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = self.view.frame.size.width;
    CGFloat height = width * (9.0 / 16.0);
    return height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *urlString = [NSString stringWithFormat:@"https://www.youtube.com/watch?v=%@", self.data[indexPath.row]];
    NSDictionary *videos = [HCYoutubeParser h264videosWithYoutubeURL:[NSURL URLWithString:urlString]];
    [HCYoutubeParser h264videosWithYoutubeURL:[NSURL URLWithString:urlString] completeBlock:^(NSDictionary *videoDictionary, NSError *error) {
        MPMoviePlayerViewController *controller = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:videos[@"medium"]]];
        [self presentMoviePlayerViewControllerAnimated:controller];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
