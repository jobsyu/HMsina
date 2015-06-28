//
//  HMDiscoverViewController.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/25.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "HMDiscoverViewController.h"
#import "HMsearchBar.h"

@implementation HMDiscoverViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    // 创建搜索框对象
    HMsearchBar *searchBar = [HMsearchBar searchBar];
    searchBar.width = 300;
    searchBar.height = 30;
    self.navigationItem.titleView = searchBar;
}

@end
