//
//  ACMoreResponseButton.h
//  MoreResponseButtonExample
//
//  Created by lonlife on 2018/11/27.
//  Copyright © 2018 lonlife. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ACMoreResponseButton : UIButton

// 扩大点击的区域，顺序依次是左、上、右、下
@property (nonatomic) CGRect moreArea;

- (instancetype)initWithFrame:(CGRect)frame moreArea:(CGRect)moreArea;

+ (instancetype)moreAreaButtonWithFrame:(CGRect)frame moreArea:(CGRect)moreArea;

@end

NS_ASSUME_NONNULL_END
