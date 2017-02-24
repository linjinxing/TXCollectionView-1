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
#import "TXDataSourceItem.h"
#import "TXDataSourceCellAdapter.h"


@protocol TXArrayDataSource<TXDataSource>
@property (nonatomic, readonly, strong, nonnull) NSArray* items;
@property (nonatomic, readonly, strong, nonnull) id<TXDataSourceCellAdapter> cellAdapter;
/**
 cellIdentifier会用默认的填充，collectionview 会用 [TXDataSourceCellAdapterPOD podCollectionView]

 @param items <#items description#>
 @return <#return value description#>
 */
+ (_Nullable instancetype)dataSourceWithItems:(NSArray* _Nonnull)items;
+ (_Nullable instancetype)dataSourceWithItems:(NSArray* _Nonnull)items cellAdapter:(id<TXDataSourceCellAdapter> _Nonnull)cellIdentifier;
@end


@protocol TXArrayDefaultDataSource <TXArrayDataSource>
@property (nonatomic, readonly, strong, nonnull) NSArray<id<TXDataSourceItem>>* items;
@property (nonatomic, readonly, strong, nonnull) id<TXDataSourceCellAdapter> cellAdapter;
/**
 cellIdentifier会用默认的填充，collectionview 会用 [TXDataSourceCellAdapterPOD podCollectionView]
 
 @param items <#items description#>
 @return <#return value description#>
 */
+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceItem>>* _Nonnull)items;
+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceItem>>* _Nonnull)items cellAdapter:(id<TXDataSourceCellAdapter> _Nonnull)cellAdapter;
@end





