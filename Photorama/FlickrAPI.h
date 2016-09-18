//
//  FlickrAPI.h
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlickrAPI : NSObject

+ (NSURL *)recentPhotosURL;
+ (NSArray *)photosFromJSONData:(NSData *)jsonData;

@end
