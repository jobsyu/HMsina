//
//  HMMessageCenterViewController.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/25.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "HMMessageCenterViewController.h"

@implementation HMMessageCenterViewController


-(void)viewDidLoad
{
   self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(ComposeMsg)];
    self.navigationItem.rightBarButtonItem.enabled = NO;
}

-(void)ComposeMsg
{
   
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
}
@end
