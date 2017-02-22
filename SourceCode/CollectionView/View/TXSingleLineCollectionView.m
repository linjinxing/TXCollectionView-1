//
//  TXSingleLineCollectionView.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXSingleLineCollectionView.h"
#import "UICollectionView+Adapter.h"

#define kSpace 8.0f

@implementation TXSingleLineCollectionView

+ (instancetype)collectionViewWithFrame:(CGRect)frame itemSize:(CGSize)itemSize space:(CGFloat)space scrollDirection:(UICollectionViewScrollDirection)scrollDirection
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = scrollDirection;
    layout.itemSize = itemSize;
    layout.minimumInteritemSpacing = space;
    //    layout.sectionInset = UIEdgeInsetsMake(space , space * 2, 0, space * 2);
    if (scrollDirection == UICollectionViewScrollDirectionHorizontal) {
        frame.size.height = itemSize.height + kSpace * 2;
    }else{
        frame.size.width = itemSize.width + kSpace * 2;
    }
    TXSingleLineCollectionView* cv = [[self alloc] initWithFrame:frame collectionViewLayout:layout];
    [cv registerDefaultClass];
    return cv;
}

+ (instancetype)collectionViewWithFrame:(CGRect)frame itemSize:(CGSize)itemSize scrollDirection:(UICollectionViewScrollDirection)scrollDirection{
    return [self collectionViewWithFrame:frame itemSize:itemSize space:kSpace scrollDirection:scrollDirection];
}

+ (instancetype)collectionViewWithFrame:(CGRect)frame itemSize:(CGSize)itemSize space:(CGFloat)space
{
    return [self collectionViewWithFrame:frame itemSize:itemSize space:space scrollDirection:UICollectionViewScrollDirectionHorizontal];
}

+ (instancetype)collectionViewWithFrame:(CGRect)frame itemSize:(CGSize)itemSize{
    return [self collectionViewWithFrame:frame itemSize:itemSize space:kSpace scrollDirection:UICollectionViewScrollDirectionHorizontal];
}

@end




