//
//  TXDataSourceItem.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TXDataSourceTypes.h"



@protocol TXArrayDataSource<TXDataSource>
@property (nonatomic, readonly, strong, nonnull) NSArray<id<TXDataSourceItem>>* items;
@property (nonatomic, readonly, strong, nonnull) id<TXDataSourceCellAdapter> cellIdentifier;
+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceItem>>* _Nonnull)items;
+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceItem>>* _Nonnull)items identifier:(id<TXDataSourceCellAdapter> _Nonnull)cellIdentifier;
@end






