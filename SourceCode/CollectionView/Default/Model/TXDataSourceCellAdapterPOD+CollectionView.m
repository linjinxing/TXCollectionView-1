//
//  TXDataSourceCellAdapterPOD+CollectionView.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/24.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXDataSourceCellAdapterPOD+CollectionView.h"
#import "TXCollectionViewCell.h"

@implementation TXDataSourceCellAdapterPOD (CollectionView)

+ (instancetype) podCollectionView{
    return [self podWithStyle:TXCollectionViewCellStyleDefault
                          cls:[TXCollectionViewCell class]
                   identifier:TXDataSourceDefaultCellIdentifier];
}
@end
