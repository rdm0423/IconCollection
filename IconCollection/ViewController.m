//
//  ViewController.m
//  IconCollection
//
//  Created by Taylor Mott on 24.2.2015.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "IconCollectionViewDataSource.h"

@interface ViewController ()

@property (strong, nonatomic) UICollectionView *collectionView;
@property (strong, nonatomic) IconCollectionViewDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
//    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    self.dataSource = [IconCollectionViewDataSource new];
    self.collectionView.dataSource = self.dataSource;
    [self.dataSource registerCollectionView:self.collectionView];
    
    self.collectionView.delegate = self;
    
    self.collectionView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.collectionView];
    
    [self.collectionView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.collectionView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1 constant:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UICollectionView Delegate Methods

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *dvc = [DetailViewController new];
    dvc.imageName = [self.dataSource imageNames][indexPath.row];
    [self.navigationController pushViewController:dvc animated:YES];
}

@end
