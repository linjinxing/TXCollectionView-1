//
//  TXSingleLineCollectionView.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXSingleLineCollectionView : UICollectionView
/**
 <#Description#>

 @param frame <#frame description#>
 @param itemSize <#itemSize description#>
 @return <#return value description#>
 */
+ (instancetype)collectionViewWithFrame:(CGRect)frame
                               itemSize:(CGSize)itemSize;

/**
 参见最后一个

 @param frame <#frame description#>
 @param itemSize <#itemSize description#>
 @param space <#space description#>
 @return <#return value description#>
 */
+ (instancetype)collectionViewWithFrame:(CGRect)frame
                               itemSize:(CGSize)itemSize
                                  space:(CGFloat)space;

/**
 参见最后一个

 @param frame <#frame description#>
 @param itemSize <#itemSize description#>
 @param scrollDirection <#scrollDirection description#>
 @return <#return value description#>
 */
+ (instancetype)collectionViewWithFrame:(CGRect)frame
                               itemSize:(CGSize)itemSize
                        scrollDirection:(UICollectionViewScrollDirection)scrollDirection;

/**
 创建TXSingleLineCollectionView，会用TXDataSourceDefaultCellIdentifier注册TXCollectionViewCell

 @param frame <#frame description#>
 @param itemSize <#itemSize description#>
 @param space <#space description#>
 @param scrollDirection 滚动方向， 默认是UICollectionViewScrollDirectionHorizontal
 @return <#return value description#>
 */
+ (instancetype)collectionViewWithFrame:(CGRect)frame
                               itemSize:(CGSize)itemSize
                                  space:(CGFloat)space
                        scrollDirection:(UICollectionViewScrollDirection)scrollDirection;
@end
