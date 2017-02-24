//
//  TXDataSourceCellAdapterPOD.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/24.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXDataSourceCellAdapter.h"


TXCVConstString TXDataSourceDefaultCellIdentifier = @"TXCollectionViewDefaultCellIdentifier";



@interface TXDataSourceCellAdapterPOD()
@property(assign) NSInteger style;
@property(assign, nullable) Class cls;
@property(copy, nullable) NSString* identifier;
@end

@implementation TXDataSourceCellAdapterPOD
+ (instancetype) podWithStyle:(NSInteger)style
                          cls:(Class)cls
                   identifier:(NSString*)identifier{
    TXDataSourceCellAdapterPOD* pod = [[self alloc] init];
    pod.style = style;
    pod.cls = cls;
    pod.identifier = identifier;
    return pod;
}

+ (instancetype) podWithStyle:(NSInteger)style
                          cls:(Class _Nonnull)cls{
    return [self podWithStyle:style cls:cls identifier:TXDataSourceDefaultCellIdentifier];
}

@end




