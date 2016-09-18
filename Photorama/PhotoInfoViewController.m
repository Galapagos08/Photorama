//
//  PhotoInfoViewController.m
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "PhotoInfoViewController.h"
#import "Photo.h"
#import "PhotoStore.h"

@interface PhotoInfoViewController ()
@property IBOutlet UIImageView *imageView;
@end

@implementation PhotoInfoViewController

- (void)setPhoto:(Photo *)photo {
    _photo = photo;
    self.navigationItem.title = self.photo.title;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.photoStore fetchImageForPhoto:self.photo
                             completion:^(UIImage *image) {
                                 [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                                     self.imageView.image = image;
                                 }];
                             }];
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
