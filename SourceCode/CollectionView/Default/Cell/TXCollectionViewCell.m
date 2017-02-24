//
//  TXCollectionViewImageCell.m
//  MVCOfReadableCode
//
//  Created by linjinxing on 17/1/18.
//  Copyright © 2017年 linjinxing. All rights reserved.
//

#import "TXCollectionViewCell.h"


#define kDefaultSpace 6.0f

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
    self.space = kDefaultSpace;
    self.contentInsets = UIEdgeInsetsMake(self.space, self.space, self.space, self.space);
#ifdef DEBUG
    self.backgroundColor = [UIColor yellowColor];
    self.imageView.backgroundColor = [UIColor greenColor];
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
//        label.backgroundColor = [UIColor brownColor];
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
//        label.backgroundColor = [UIColor purpleColor];
        [self.contentView addSubview:label];
        _detailTextLabel = label;
    }
    return _detailTextLabel;
}


- (void)layoutOverlayStyle{
    _imageView.frame = UIEdgeInsetsInsetRect(self.bounds, self.contentInsets);
    CGFloat selfHeight = self.frame.size.height;
    CGFloat contentWidth = self.frame.size.width - self.contentInsets.left - self.contentInsets.right;
    CGFloat textHeight = 0, textY = 0;
    CGFloat detailHeight = 0, detailY = 0;
    CGFloat (^calculateHeight)(UILabel*) = ^(UILabel* label){
        [label sizeToFit];
        return [label.text boundingRectWithSize:CGSizeMake(contentWidth, 999)
                                        options:NSStringDrawingUsesFontLeading
                                     attributes:@{NSFontAttributeName:label.font}
                                        context:nil].size.height;
    };
    
    if (_textLabel && _detailTextLabel) {
        textHeight = calculateHeight(_textLabel);
        detailHeight = calculateHeight(_detailTextLabel);
        textY = selfHeight - (textHeight + detailHeight + kDefaultSpace * 2 + self.contentInsets.bottom);
        detailY = selfHeight - (detailHeight + kDefaultSpace + self.contentInsets.bottom);
    }else if (_textLabel){
        textHeight = calculateHeight(_textLabel);
        textY = selfHeight - (textHeight + kDefaultSpace + self.contentInsets.bottom);
    }else if (_detailTextLabel){
        detailHeight = calculateHeight(_detailTextLabel);
        detailY = selfHeight - (detailHeight + kDefaultSpace + self.contentInsets.bottom);
    }
    _textLabel.frame = CGRectMake(self.contentInsets.left,
                                  textY,
                                  contentWidth,
                                  textHeight);
    
    _detailTextLabel.frame = CGRectMake(self.contentInsets.left,
                                        detailY,
                                        contentWidth,
                                        detailHeight);
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
        [self layoutOverlayStyle];
    }
}


@end





