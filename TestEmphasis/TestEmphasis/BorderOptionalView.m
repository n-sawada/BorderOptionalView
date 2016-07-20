//
//  BorderOptionalView.m
//  Test
//
//  Created by Naoki_Sawada on 2016/07/21.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "BorderOptionalView.h"

@implementation BorderOptionalView

- (void)awakeFromNib {
    //
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self.borderOption = BorderOption_None;
        self.borderColor = [UIColor blackColor];
        self.borderWidth = 1.0;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, self.borderWidth);
    CGContextSetStrokeColorWithColor(ctx, self.borderColor.CGColor);
    
    if (self.borderOption & BorderOption_Top) {
        
        CGContextMoveToPoint(ctx, 0, 0);
        CGContextAddLineToPoint(ctx, self.frame.size.width, 0);
        CGContextStrokePath(ctx);
    }
    
    if (self.borderOption & BorderOption_Bottom) {
        
        CGContextMoveToPoint(ctx, 0, self.frame.size.height);
        CGContextAddLineToPoint(ctx, self.frame.size.width, self.frame.size.height);
        CGContextStrokePath(ctx);
    }
    
    if (self.borderOption & BorderOption_Left) {
        
        CGContextMoveToPoint(ctx, 0, 0);
        CGContextAddLineToPoint(ctx, 0, self.frame.size.height);
        CGContextStrokePath(ctx);
    }
    
    if (self.borderOption & BorderOption_Right) {
        
        CGContextMoveToPoint(ctx, self.frame.size.width, 0);
        CGContextAddLineToPoint(ctx, self.frame.size.width, self.frame.size.height);
        CGContextStrokePath(ctx);
    }
}


@end
