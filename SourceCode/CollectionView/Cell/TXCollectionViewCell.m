//
//  TXCollectionViewImageCell.m
//  MVCOfReadableCode
//
//  Created by linjinxing on 17/1/18.
//  Copyright © 2017年 linjinxing. All rights reserved.
//

#import "TXCollectionViewCell.h"


#define kDefaultSpace 12.0f

@interface TXCollectionViewCell()
//@property(nonatomic, strong, nullable) UIImageView* imageView;
//@property(nonatomic, strong, nullable) UILabel* textLabel;
//@property (nonatomic, readonly, strong, nullable) UILabel *detailTextLabel;
@property(assign) CGFloat space;
@end

@implementation TXCollectionViewCell{
    UIImageView* _imageView;
    UILabel* _textLabel;
    UILabel* _detailTextLabel;
}
@dynamic imageView, textLabel, detailTextLabel;

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (!self) return nil;
    self.contentInsets = UIEdgeInsetsMake(self.space, self.space, self.space, self.space);
#ifdef DEBUG
//    self.backgroundColor = [UIColor yellowColor];
//    self.imageView.backgroundColor = [UIColor greenColor];
//    self.titleLabel.backgroundColor = [UIColor brownColor];
#endif
    return self;
}

+ (CGFloat)ratio{
    return [UIScreen mainScreen].bounds.size.width/1200.0f;
}

- (UIImageView*)imageView{
    if (nil == _imageView) {
        UIImageView* imageView = [[UIImageView alloc] init];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.contentView addSubview:imageView];
        _imageView = imageView;
    }
    return _imageView;
}

- (UILabel*)textLabel{
    if (nil == _textLabel) {
        UILabel* label = [[UILabel alloc] init];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:label];
        _textLabel = label;
    }
    return _textLabel;
}

- (UILabel*)detailTextLabel{
    if (nil == _detailTextLabel) {
        UILabel* label = [[UILabel alloc] init];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:12];
        label.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:label];
        _detailTextLabel = label;
    }
    return _detailTextLabel;
}

- (void)layoutSubviews{
    if (TXCollectionViewCellStyleDefault == self.style) {
        CGFloat width = self.frame.size.width - self.contentInsets.left - self.contentInsets.right;
        _imageView.frame = CGRectMake(self.contentInsets.left, self.contentInsets.top, width, width);
        
        [_textLabel sizeToFit];
        _textLabel.frame = CGRectMake(0,
                                      self.contentInsets.top + width + self.contentInsets.top,
                                      self.frame.size.width,
                                      _textLabel.frame.size.height);
    }else{
        _imageView.frame = UIEdgeInsetsInsetRect(self.bounds, self.contentInsets);
        if (_textLabel && _detailTextLabel) {
            [_textLabel sizeToFit];
            [_detailTextLabel sizeToFit];
            
            CGFloat (^calculateHeight)(UILabel*) = ^(UILabel* label){
                return [label sizeWithFont:label.font
                                constrainedToSize:label.frame.size
                                    lineBreakMode:NSLineBreakByWordWrapping].height;
            };
            CGSize labelSize = ;
            
            _textLabel.frame = CGRectMake(self.contentInsets, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
        }else if (_textLabel){
            
        }else{
            
        }
    }
}


@end





