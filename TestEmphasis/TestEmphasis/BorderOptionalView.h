//
//  BorderOptionalView.h
//  TestEmphasis
//
//  Created by Naoki_Sawada on 2016/07/21.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import <UIKit/UIKit.h>

// 枠強調オプション
typedef NS_OPTIONS(NSUInteger, BorderOption) {
    BorderOption_None	= 0,
    BorderOption_Top	= 1 << 0,
    BorderOption_Bottom	= 1 << 1,
    BorderOption_Left	= 1 << 2,
    BorderOption_Right	= 1 << 3,
    BorderOption_All	= NSUIntegerMax
};

IB_DESIGNABLE

@interface BorderOptionalView : UIView

@property (nonatomic) BorderOption borderOption;
@property (nonatomic) IBInspectable UIColor* borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;


@end
