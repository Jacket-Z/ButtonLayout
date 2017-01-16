//
//  UIButton+LayoutEdgeInsets.h
//
//  Created by ZhaoJie on 2017/1/13.
//  Copyright © 2017年 yh. All rights reserved.
//
//  重新布局button中的图片和文字的位置

#import <UIKit/UIKit.h>

@interface UIButton (LayoutEdgeInsets)

/**
 *  将button设置为图片在上边的形式
 *
 *  @param spacing 图片和文字的间距
 */
- (void)layoutImageToTop:(CGFloat)spacing;

/**
 *  将button设置为图片在左边的形式（这个方法修改button图片和文字间距）
 *
 *  @param spacing 图片和文字的间距
 */
- (void)layoutImageToLeft:(CGFloat)spacing;

/**
 *  将button设置为图片在下边的形式
 *
 *  @param spacing 图片和文字的间距
 */
- (void)layoutImageToBottom:(CGFloat)spacing;

/**
 *  将button设置为图片在右边的形式
 *
 *  @param spacing 图片和文字的间距
 */
- (void)layoutImageToRight:(CGFloat)spacing;

@end
