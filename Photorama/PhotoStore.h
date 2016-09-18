//
//  PhotoStore.h
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Photo;

@interface PhotoStore : NSObject

- (void)fetchRecentPhotosWithCompletion:(void(^)(NSArray *))completion;
- (void)fetchImageForPhoto:(Photo *)photo completion:(void(^)(UIImage *))completion;

@end
