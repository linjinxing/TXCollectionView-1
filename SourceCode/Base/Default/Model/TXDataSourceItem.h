//
//  TXDataSourceItem.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/24.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TXDataSourceTypes.h"


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



@interface TXDataSourceItemPOD : NSObject<TXDataSourceItem>
+ (_Nonnull instancetype)podWithTitle:(NSString* _Nullable)title
                      detail:(NSString* _Nullable)detail
                       image:(UIImage* _Nullable)image;
@end
