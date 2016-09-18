//
//  PhotoStore.m
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "PhotoStore.h"
#import "FlickrAPI.h"

@interface PhotoStore ()
@property (nonatomic) NSURLSession *session;
@end

@implementation PhotoStore

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSURLSessionConfiguration *config =
        [NSURLSessionConfiguration defaultSessionConfiguration];
        _session = [NSURLSession sessionWithConfiguration:config];
    }
    return self;
}

- (void)fetchRecentPhotos {
    NSURL *url = [FlickrAPI recentPhotosURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSessionDataTask *task = [self.session dataTaskWithRequest:request
                                                 completionHandler:^(NSData *data,
                                                                     NSURLResponse *response,
                                                                     NSError *error) {
                                                     if (data != nil) {
                                                         NSError *parseError = nil;
                                                         id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                                                                         options:0
                                                                                                           error:&parseError];
                                                         if (jsonObject != nil) {
                                                             NSLog(@"%@", jsonObject);
                                                         } else {
                                                             NSLog(@"Failed to parse JSON data. Error: %@", parseError);
                                                         }
                                                     } else {
                                                         NSLog(@"Failed to fetch data. Error: %@", error);
                                                     }
                                                 }];
    [task resume];
}

@end
