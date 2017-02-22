//
//  UICollectionView+Adapter.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "UICollectionView+Adapter.h"
#import "TXCollectionViewCell.h"
#import "TXDataSourceTypes.h"

@implementation UICollectionView (Adapter)
- (void)registerDefaultClass{
    [self registerClass:[TXCollectionViewCell class] forCellWithReuseIdentifier:TXDataSourceDefaultCellIdentifier];
}
@end
