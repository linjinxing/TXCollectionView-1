//
//  TXDataSourceArrayItemPOD.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TXDataSourceArrayItem.h"



@interface TXDataSourceArrayItemPOD : NSObject<TXDataSourceArrayItem>
+ (instancetype)podWithTitle:(NSString*)title
                      detail:(NSString*)detail
                       image:(UIImage*)image;
@end
