//
//  TXDataSourceTypes.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NSString* const TXCVConstString;

FOUNDATION_EXTERN _Nonnull TXCVConstString TXDataSourceDefaultCellIdentifier;

@protocol TXDataSource<NSObject>
@end

@protocol TXDataSourceItem <NSObject>
@optional
@property(nonatomic, readonly, copy, nullable) NSString* text;
@property(nonatomic, readonly, copy, nullable) NSString* detail;
/**
 下面二个二选一
 */
@property(nonatomic, readonly, copy, nullable) NSURL* imageURL;
@property(nonatomic, readonly, strong, nullable) UIImage* image;
@end


@protocol TXDataSourceCellAdapter <NSObject>
@property(readonly, assign) NSInteger style;

/**
 为空时，将用默认代替，如果是collection view，会使用TXCollectionViewCell
 */
@property(readonly, assign, nullable) Class cls;
/**
 为空时，将用TXDataSourceDefaultCellIdentifier代替
 */
@property(readonly, copy, nullable) NSString* identifier;
@end



