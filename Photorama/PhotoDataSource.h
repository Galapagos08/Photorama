//
//  PhotoDataSource.h
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoDataSource : NSObject <UICollectionViewDataSource>

@property (nonatomic, copy) NSArray *photos;

- (instancetype)initWithPhotos:(NSArray *)photos NS_DESIGNATED_INITIALIZER;
@end
