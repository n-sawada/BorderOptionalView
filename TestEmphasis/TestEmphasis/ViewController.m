//
//  ViewController.m
//  TestEmphasis
//
//  Created by Naoki_Sawada on 2016/07/20.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "ViewController.h"
#import "BorderOptionalView.h"

#import "IndexTCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) NSArray *items;
@property (weak, nonatomic) IBOutlet UITableView *borderTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _items = @[
               @"1",
               @"2",
               @"3",
               @"4",
               @"5",
               @"6",
               @"7",
               @"8",
               @"9",
               @"10",
               @"11",
               @"12"
               ];
    
    BorderOptionalView* view = [[BorderOptionalView alloc] initWithFrame:CGRectMake(50, 300, 100, 100)];
    view.backgroundColor	= [UIColor yellowColor];
    view.borderColor		= [UIColor grayColor];
    view.borderWidth		= 5.0;
    view.borderOption		= BorderOption_Top | BorderOption_Bottom;
    [self.view addSubview:view];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.items.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    IndexTCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    [cell configureCell:self.items[indexPath.row]];
    return cell;
}

@end
