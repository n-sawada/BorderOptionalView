//
//  IndexTCell.h
//  TestEmphasis
//
//  Created by Naoki_Sawada on 2016/07/20.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BorderOptionalView.h"

@interface IndexTCell : UITableViewCell

@property (weak, nonatomic) IBOutlet BorderOptionalView *borderOptionalView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)configureCell:(NSString *)title;

@end
