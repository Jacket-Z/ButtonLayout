//
//  UIButton+LayoutEdgeInsets.m
//  CustomDemo
//
//  Created by ZhaoJie on 2017/1/16.
//  Copyright © 2017年 ZhaoJie. All rights reserved.
//

#import "UIButton+LayoutEdgeInsets.h"

@implementation UIButton (LayoutEdgeInsets)

- (void)layoutImageToTop:(CGFloat)spacing
{
    CGSize imageViewSize = self.imageView.frame.size;
    CGSize titleLabelSize = self.titleLabel.frame.size;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleLabelSize.width + 0.5 < frameSize.width) {
        titleLabelSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageViewSize.height + titleLabelSize.height + spacing);
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageViewSize.height), 0.0, 0.0, - titleLabelSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageViewSize.width, - (totalHeight - titleLabelSize.height), 0);
}

- (void)layoutImageToLeft:(CGFloat)spacing
{
    self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing, 0, 0);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -spacing);
}

- (void)layoutImageToBottom:(CGFloat)spacing
{
    CGSize imageViewSize = self.imageView.frame.size;
    CGSize titleLabelSize = self.titleLabel.frame.size;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleLabelSize.width + 0.5 < frameSize.width) {
        titleLabelSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageViewSize.height + titleLabelSize.height + spacing);
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, - (totalHeight - imageViewSize.height), - titleLabelSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(- (totalHeight - titleLabelSize.height), - imageViewSize.width, 0, 0);
}

- (void)layoutImageToRight:(CGFloat)spacing
{
    CGSize imageViewSize = self.imageView.frame.size;
    CGSize titleLabelSize = self.titleLabel.frame.size;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleLabelSize.width + 0.5 < frameSize.width) {
        titleLabelSize.width = frameSize.width;
    }
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, 0, - (titleLabelSize.width * 2  + spacing));
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - (imageViewSize.width * 2  +spacing), 0, 0);
}

@end
