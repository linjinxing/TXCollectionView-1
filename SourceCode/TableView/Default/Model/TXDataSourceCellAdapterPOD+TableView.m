//
//  TXDataSourceCellAdapterPOD+TableView.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/24.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXDataSourceCellAdapterPOD+TableView.h"

@implementation TXDataSourceCellAdapterPOD (TableView)
+ (instancetype) podTableView{
    return [self podWithStyle:UITableViewCellStyleDefault
                          cls:[UITableViewCell class]
                   identifier:TXDataSourceDefaultCellIdentifier];
}
@end
