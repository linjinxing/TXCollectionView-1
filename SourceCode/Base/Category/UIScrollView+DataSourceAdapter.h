//
//  UIScrollView+DataSourceAdapter.h
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TXDataSourceArrayItem.h"

@interface UIScrollView (DataSourceAdapter)

/**
 @dataSourceAdapter  设置UICollectionView或者UITableView的数据源dataSource
 
 如果是为UICollectionView设置数据源，则必须遵守UICollectionViewDataSource协议，
 如果是为UITableView设置数据源，则必须遵守UITableViewDataSource协议，
 
 设置为空时，会移除之前的datasource
 */
@property(nonatomic, strong) id<TXDataSourceArrayItemDataSource> dataSourceAdapter;
@end



