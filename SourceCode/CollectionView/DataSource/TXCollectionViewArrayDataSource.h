//
//  TXArrayAdapter.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TXDataSourceArrayItem.h"




@interface TXCollectionViewArrayDataSource : NSObject<TXDataSourceArrayItemDataSource, UICollectionViewDataSource>
@end


