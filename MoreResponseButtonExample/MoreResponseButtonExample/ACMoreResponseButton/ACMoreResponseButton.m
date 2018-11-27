//
//  ACMoreResponseButton.m
//  MoreResponseButtonExample
//
//  Created by lonlife on 2018/11/27.
//  Copyright © 2018 lonlife. All rights reserved.
//

#import "ACMoreResponseButton.h"

@implementation ACMoreResponseButton


- (instancetype)initWithFrame:(CGRect)frame moreArea:(CGRect)moreArea
{
    if(self = [super initWithFrame:frame]){
        self.moreArea = moreArea;
    }
    return self;
}

+ (instancetype)moreAreaButtonWithFrame:(CGRect)frame moreArea:(CGRect)moreArea
{
    return [[self alloc] initWithFrame:frame moreArea:moreArea];
}

- (void)setMoreArea:(CGRect)moreArea
{
    _moreArea = moreArea;
}

// override pointInside method
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    int leftMargin = self.bounds.origin.x - self.moreArea.origin.x;
    int topMargin = self.bounds.origin.y - self.moreArea.origin.y;
    int rightMargin = self.bounds.size.width + self.moreArea.size.width;
    int downMargin = self.bounds.size.height + self.moreArea.size.height;
    if(point.x >= leftMargin && point.x <= rightMargin && point.y >= topMargin && point.y <= downMargin){
        return true;
    }
    return false;
}

@end
