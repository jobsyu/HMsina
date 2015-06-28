//
//  HMTitleMenuViewController.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/27.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "HMTitleMenuViewController.h"

@implementation HMTitleMenuViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    if(indexPath.row == 0)
    {
        cell.textLabel.text = @"好友";
    } else if (indexPath.row == 1){
        cell.textLabel.text = @"密友";
    } else if (indexPath.row == 2){
        cell.textLabel.text = @"基友";
    }
    
    return cell;
}
@end
