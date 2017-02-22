//
//  TXDataSourceArrayItemPOD.m
//  TXCollectionView
//
//  Created by linjinxing on 17/2/21.
//  Copyright © 2017年 tongxing. All rights reserved.
//

#import "TXDataSourceArrayItemPOD.h"

@interface TXDataSourceArrayItemPOD()
@property(nonatomic, copy) NSString* text;
@property(nonatomic, copy) NSString* detail;
@property(nonatomic, strong) UIImage* image;
@end

@implementation TXDataSourceArrayItemPOD

+ (instancetype)podWithTitle:(NSString*)title
                      detail:(NSString*)detail
                       image:(UIImage*)image{
    TXDataSourceArrayItemPOD* pod = [[self alloc] init];
    pod.text = title;
    pod.detail = detail;
    pod.image = image;
    return pod;
}

//#ifdef DEBUG
- (NSString*)text{
    return self.text;
}
//
//- (UIImage*)image
//{
//    return [UIImage imageNamed:@"qq"];
//}
//#endif

@end
