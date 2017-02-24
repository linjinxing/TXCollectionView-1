//
//  TXCollectionViewImageCell.h
//  MVCOfReadableCode
//
//  Created by linjinxing on 17/1/18.
//  Copyright © 2017年 linjinxing. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "TXCollectionViewTypes.h"


typedef NS_ENUM(NSInteger, TXCollectionViewCellStyle) {
    TXCollectionViewCellStyleDefault, /* 图片在上面，文字在下面 */
    TXCollectionViewCellStyleTextOverlayImage, /* 文字会覆盖图片 */
};


@interface TXCollectionViewCell : UICollectionViewCell
@property (nonatomic, assign) TXCollectionViewCellStyle style;
@property (nonatomic, readonly, strong, nullable) UILabel* textLabel;
@property (nonatomic, readonly, strong, nullable) UIImageView* imageView;
@property (nonatomic, readonly, strong, nullable) UILabel *detailTextLabel;
@property (nonatomic) UIEdgeInsets contentInsets;
@end



