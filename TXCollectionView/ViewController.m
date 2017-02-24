//
//  ViewController.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/20.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "ViewController.h"
#import "TXDataSource.h"
#import "TXSingleLineCollectionView.h"

@interface ViewController ()

@end

#define Space 6
#define CollectionViewHeight 80
#define CellSize CGSizeMake(68, CollectionViewHeight)
#define ButtonHeight 60


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
//    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    layout.itemSize = CellSize;
//    layout.minimumInteritemSpacing = Space;
//    layout.sectionInset = UIEdgeInsetsMake(Space , Space * 2, 0, Space * 2);
//    UICollectionView* cv = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    
    UICollectionView* cv = [TXSingleLineCollectionView collectionViewWithFrame:self.view.bounds
                                                                      itemSize:CellSize];
    cv.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:cv];
    cv.dataSourceAdapter = [TXCollectionViewArrayDataSource dataSourceWithItems:@[[TXDataSourceItemPOD new],
                                                                                  [TXDataSourceItemPOD new],
                                                                                  [TXDataSourceItemPOD new],
                                                                                  [TXDataSourceItemPOD new]]];
    // Do any additional setup after loading the view, typically from a nib.
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        cv = nil;
//    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end






