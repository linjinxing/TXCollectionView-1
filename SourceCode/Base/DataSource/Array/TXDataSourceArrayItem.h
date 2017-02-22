//
//  TXDataSourceArrayItem.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol TXDataSourceArrayItem <NSObject>
@optional
@property(nonatomic, readonly, copy, nullable) NSString* text;
@property(nonatomic, readonly, copy, nullable) NSString* detail;
/**
 下面二个二选一
 */
@property(nonatomic, readonly, copy, nullable) NSURL* imageURL;
@property(nonatomic, readonly, strong, nullable) UIImage* image;
@end



@protocol TXDataSourceArrayItemDataSource
@property (nonatomic, readonly, strong, nonnull) NSArray<id<TXDataSourceArrayItem>>* items;
/**
 为空时，使用TXCollectionViewDefaultCellIdentifier,  TXCollectionViewCell
 */
//@property (nonatomic, readonly, strong, nullable) NSString* cellIdentifier;
+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceArrayItem>>* _Nonnull)items;
//+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceArrayItem>>* _Nonnull)items identifier:(NSString* _Nullable)cellIdentifier;
@end




