//
//  TXDataSourceCellAdapterPOD+CollectionView.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/24.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXDataSourceCellAdapter.h"

@interface TXDataSourceCellAdapterPOD (CollectionView)
/**
 style = TXCollectionViewCellStyleDefault
 cls = TXCollectionViewCell
 identifier = TXDataSourceDefaultCellIdentifier
 
 @return <#return value description#>
 */
+ (instancetype) podCollectionView;
+ (instancetype) podCollectionViewWithStyle:(NSInteger)style;
+ (instancetype) podWithClass:(Class _Nonnull)cls;
@end
