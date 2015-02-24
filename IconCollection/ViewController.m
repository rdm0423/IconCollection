//
//  ViewController.m
//  IconCollection
//
//  Created by Taylor Mott on 24.2.2015.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "iconCollectionViewDataSource.h"
#import "DetailViewController.h"

@interface ViewController () <UICollectionViewDelegate>

@property (strong, nonatomic) UICollectionView *collectionView;
@property (nonatomic, strong) iconCollectionViewDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    
//    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    
    self.dataSource = [iconCollectionViewDataSource new];
    self.collectionView.dataSource = self.dataSource;
    
    [self.dataSource registerCollectionView:self.collectionView];
    
    self.collectionView.delegate = self;
    
    [self.view addSubview:self.collectionView];
    
    
    // Add AutoLayout Code here...
    
    
    
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailViewController *dvc = [DetailViewController new];
    dvc.imageName = [self.dataSource imageNames][indexPath.row];
    [self.navigationController pushViewController:dvc animated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
