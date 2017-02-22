//
//  TXArrayAdapter.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXCollectionViewArrayDataSource.h"
#import "TXCollectionViewCell.h"
#import "TXDataSourceTypes.h"

@interface TXCollectionViewArrayDataSource()
@property (nonatomic, strong) NSArray<id<TXDataSourceArrayItem>>* items;
//@property (nonatomic, strong) NSString* cellIdentifier;
@end

@implementation TXCollectionViewArrayDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.items.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    TXCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:TXDataSourceDefaultCellIdentifier forIndexPath:indexPath];
//    cell.contentView.backgroundColor = [UIColor blueColor];
    id<TXDataSourceArrayItem> item = self.items[indexPath.item];
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
    if ([item respondsToSelector:@selector(image)] &&  item.image) {
        cell.imageView.image = item.image;
    }
    else if ([item respondsToSelector:@selector(imageURL)] && item.imageURL){
        
    }
    return cell;
}

+ (instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceArrayItem>>*)items{
    return [self dataSourceWithItems:items identifier:nil];
}

+ (_Nullable instancetype)dataSourceWithItems:(NSArray<id<TXDataSourceArrayItem>>* _Nonnull)items identifier:(NSString* _Nullable)cellIdentifier{
    TXCollectionViewArrayDataSource* ds = [[self alloc] init];
    ds.items = items;
//    ds.cellIdentifier = cellIdentifier;
    return ds;
}



@end



