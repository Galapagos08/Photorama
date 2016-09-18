//
//  PhotoDataSource.m
//  Photorama
//
//  Created by Dan Esrey on 2016/18/09.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "PhotoDataSource.h"
#import "PhotoCollectionViewCell.h"
#import "Photo.h"

@implementation PhotoDataSource

- (instancetype)initWithPhotos:(NSArray *)photos{
    self = [super init];
    if (self) {
        _photos = [photos copy];
    }
    return self;
}

// MARK: Collection View Data Source
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return self.photos.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell"
                                              forIndexPath:indexPath];
    
    Photo *photo = self.photos[indexPath.row];
    [cell updateWithImage:photo.image];

    return cell;
}

- (instancetype)init{
    return [self initWithPhotos:nil];
}

@end
