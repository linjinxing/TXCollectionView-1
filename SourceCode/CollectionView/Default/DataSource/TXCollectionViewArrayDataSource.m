//
//  TXArrayAdapter.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXCollectionViewArrayDataSource.h"
#import "TXCollectionViewCell.h"
#import "TXDataSourceCellAdapter.h"
#import "TXDataSourceCellAdapterPOD+CollectionView.h"
#import "TXDataSourceTypes.h"

@interface TXCollectionViewArrayDataSource()
@property (nonatomic, strong) NSArray<id<TXDataSourceItem>>* items;
@property (nonatomic, strong) id<TXDataSourceCellAdapter> cellAdapter;
@end

@implementation TXCollectionViewArrayDataSource


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.items.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    TXCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellAdapter.identifier forIndexPath:indexPath];
    cell.style = self.cellAdapter.style;
//    cell.contentView.backgroundColor = [UIColor blueColor];
    id<TXDataSourceItem> item = self.items[indexPath.item];
    if ([item respondsToSelector:@selector(text)] && [item.text length]) {
        cell.textLabel.text = item.text;
    }else{
        cell.textLabel.text = nil;
    }
    if ([item respondsToSelector:@selector(detail)] &&  [item.detail length]) {
        cell.detailTextLabel.text = item.detail;
    }else{
        cell.detailTextLabel.text = nil;
    }
    
    cell.imageView.image = nil;
    if ([item respondsToSelector:@selector(image)] &&  item.image) {
        cell.imageView.image = item.image;
    }
    else if ([item respondsToSelector:@selector(imageURL)] && item.imageURL){
        
    }
    return cell;
}

+ (instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceItem>>*)items{
    return [self dataSourceWithItems:items
                         cellAdapter:[TXDataSourceCellAdapterPOD podCollectionView]];
}

+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceItem>>* _Nonnull)items cellAdapter:(id<TXDataSourceCellAdapter> _Nonnull)cellAdapter{
    TXCollectionViewArrayDataSource* ds = [[self alloc] init];
    ds.items = items;
    ds.cellAdapter = cellAdapter;
    return ds;
}



@end



