//
//  IconCollectionViewDataSource.m
//  IconCollection
//
//  Created by Taylor Mott on 24.2.2015.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "IconCollectionViewDataSource.h"

static NSString *cellID = @"CellID";

@implementation IconCollectionViewDataSource

- (void)registerCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self imageNames].count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    NSArray *subviews = [cell.contentView subviews];
    for (UIView *view in subviews)
    {
        [view removeFromSuperview];
    }
    
    UIImage *image = [UIImage imageNamed:[self imageNames][indexPath.row]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [cell.contentView addSubview:imageView];
    
    
    cell.backgroundColor = [UIColor grayColor];
    
    return cell;
}

- (NSArray *)imageNames
{
    return @[@"beach", @"england", @"food", @"friends", @"hiking", @"iphone", @"rain", @"ref", @"sleep", @"soccer", @"travel"];
}

@end
