//
//  TXDataSourceCellAdapterPOD.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/24.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TXDataSourceTypes.h"

/* 默认的cell identifier */
FOUNDATION_EXTERN _Nonnull TXCVConstString TXDataSourceDefaultCellIdentifier;

@protocol TXDataSourceCellAdapter <NSObject>
@property(readonly, assign) NSInteger style;

/**
 为空时，将用默认代替，如果是collection view，会使用TXCollectionViewCell
 */
@property(readonly, assign, nonnull) Class cls;
/**
 为空时，将用TXDataSourceDefaultCellIdentifier代替
 */
@property(readonly, copy, nonnull) NSString* identifier;
@end


@interface TXDataSourceCellAdapterPOD : NSObject<TXDataSourceCellAdapter>
+ (instancetype) podWithStyle:(NSInteger)style
                          cls:(Class _Nonnull)cls;
+ (instancetype) podWithStyle:(NSInteger)style
                          cls:(Class _Nonnull)cls
                   identifier:(NSString* _Nonnull)identifier;
@end



