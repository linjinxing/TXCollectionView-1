//
//  UIScrollView+DataSourceAdapter.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "UIScrollView+DataSourceAdapter.h"
#import <objc/runtime.h>
#import "TXCollectionViewCell.h"
#import "TXDataSourceTypes.h"

static const void *kDataSourceAdapterCacheKey = &kDataSourceAdapterCacheKey;

@implementation UIScrollView (DataSourceAdapter)
@dynamic dataSourceAdapter;

- (id<TXDataSourceArrayItemDataSource>)dataSourceAdapter{
    return objc_getAssociatedObject(self, kDataSourceAdapterCacheKey);
}

- (void)setDataSourceAdapter:(id<TXDataSourceArrayItemDataSource>)dataSourceAdapter{
    NSAssert([(NSObject*)dataSourceAdapter conformsToProtocol:@protocol(TXDataSourceArrayItemDataSource)], @"必须遵守TXDataSourceArrayItemDataSource协议");
    if (dataSourceAdapter) {
        objc_setAssociatedObject(self, kDataSourceAdapterCacheKey, dataSourceAdapter, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        if ([self isKindOfClass:[UICollectionView class]]) {
        NSAssert([(NSObject*)dataSourceAdapter conformsToProtocol:@protocol(UICollectionViewDataSource)], @"必须遵守UICollectionViewDataSource协议");
            ((UICollectionView*)self).dataSource = (id<UICollectionViewDataSource>)dataSourceAdapter;
        }
        if ([self isKindOfClass:[UITableView class]]) {
        NSAssert([(NSObject*)dataSourceAdapter conformsToProtocol:@protocol(UITableViewDataSource)], @"必须遵守UITableViewDataSource协议");
            ((UITableView*)self).dataSource = (id<UITableViewDataSource>)dataSourceAdapter;
        }
    }else{ //// 移除 dataSource
        id obj = self.dataSourceAdapter;
        if (obj) {
            objc_removeAssociatedObjects(obj);
            if ([self isKindOfClass:[UICollectionView class]]) {
                ((UICollectionView*)self).dataSource = nil;
            }
            if ([self isKindOfClass:[UITableView class]]) {
                ((UITableView*)self).dataSource = nil;
            }
        }
    }
}



@end





