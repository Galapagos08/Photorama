//
//  ViewController.m
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "PhotosViewController.h"
#import "PhotoStore.h"

@interface PhotosViewController ()
@property (nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.photoStore fetchRecentPhotos];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
