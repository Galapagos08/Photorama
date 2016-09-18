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
    
    [self.photoStore fetchRecentPhotosWithCompletion:^(NSArray *photos){
        NSLog(@"Found %lu photos", (unsigned long)photos.count);
        
        if (photos.count == 0) {
            NSLog(@"Zero photos! Sad times.");
            return; }
        [self.photoStore fetchImageForPhoto:photos.firstObject
                                 completion:^(UIImage *image) {
                                     
                                     [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                                         self.imageView.image = image;
                                     }];
                                 }];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
