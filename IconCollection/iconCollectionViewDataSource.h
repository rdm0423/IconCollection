//
//  iconCollectionViewDataSource.h
//  IconCollection
//
//  Created by Ross McIlwaine on 2/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface iconCollectionViewDataSource : NSObject <UICollectionViewDataSource>

- (NSArray *)imageNames;

- (void)registerCollectionView:(UICollectionView *)collectionView;

@end
