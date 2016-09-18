//
//  PhotoCollectionViewCell.m
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@implementation PhotoCollectionViewCell

- (void)updateWithImage:(UIImage *)image {
    if (image != nil) {
        [self.spinner stopAnimating];
    } else {
        [self.spinner startAnimating];
    }
    self.imageView.image = image;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self updateWithImage:nil];
}
- (void)prepareForReuse {
    [super prepareForReuse];
    [self updateWithImage:nil];
}

@end
