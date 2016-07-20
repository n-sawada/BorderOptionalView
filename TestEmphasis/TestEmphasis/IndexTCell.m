//
//  IndexTCell.m
//  TestEmphasis
//
//  Created by Naoki_Sawada on 2016/07/20.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "IndexTCell.h"

@implementation IndexTCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.borderOptionalView.borderOption = BorderOption_Top | BorderOption_Left;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (void)configureCell:(NSString *)title {
    
    self.titleLabel.text = title;
}

@end
