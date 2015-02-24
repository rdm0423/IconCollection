//
//  IconCollectionViewDataSource.h
//  IconCollection
//
//  Created by Taylor Mott on 24.2.2015.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IconCollectionViewDataSource : NSObject <UICollectionViewDataSource>

- (void)registerCollectionView:(UICollectionView *)collectionView;
- (NSArray *)imageNames;

@end
