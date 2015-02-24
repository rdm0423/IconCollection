//
//  iconCollectionViewDataSource.m
//  IconCollection
//
//  Created by Ross McIlwaine on 2/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "iconCollectionViewDataSource.h"

static NSString *cellID = @"CellID";

@implementation iconCollectionViewDataSource


- (void)registerCollectionView:(UICollectionView *)collectionView {
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
}



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self imageNames].count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    // This line of code prevents images from stacking ontop of eachother as you scroll down
    NSArray *subviews = [cell.contentView subviews];
    for (UIView *view in subviews) {
        [view removeFromSuperview];
    }
    
    UIImage *image = [UIImage imageNamed:[self imageNames][indexPath.row]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [cell.contentView addSubview:imageView];
    
    cell.backgroundColor = [UIColor lightGrayColor];
    
    return cell;
}


- (NSArray *)imageNames {
    return @[@"beach", @"england", @"food", @"friends", @"hiking", @"iphone", @"rain", @"ref", @"sleep", @"soccer", @"travel"];
}

@end
