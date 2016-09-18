//
//  PhotoInfoViewController.h
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Photo;
@class PhotoStore;

@interface PhotoInfoViewController : UIViewController

@property(nonatomic) Photo *photo; @property(nonatomic) PhotoStore *photoStore;

@end
