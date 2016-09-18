//
//  PhotoCollectionViewCell.h
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoCollectionViewCell : UICollectionViewCell

@property(nonatomic) IBOutlet UIImageView *imageView;
@property(nonatomic) IBOutlet UIActivityIndicatorView *spinner;

- (void)updateWithImage:(UIImage *)image;

@end
