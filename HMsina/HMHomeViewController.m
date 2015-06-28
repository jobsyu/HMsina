//
//  HMHomeViewController.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/25.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "HMHomeViewController.h"
#import "HMDropdownMenu.h"
#import "HMTitleMenuViewController.h"

@implementation HMHomeViewController

-(void)viewDidLoad{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pop) image:@"navigationbar_pop" highImage:@"navigationbar_pop_highlighted"];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(friend) image:@"navigationbar_friendsearch" highImage:@"navigationbar_friendsearch_highlighted"];
    
    UIButton *titleButton =[[UIButton alloc] init];
    titleButton.width = 150;
    titleButton.height = 30;
    
    //设置图片和文字
    [titleButton setTitle:@"首页" forState:UIControlStateNormal];
    [titleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    titleButton.titleLabel.font = [UIFont boldSystemFontOfSize:17];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
    titleButton.imageEdgeInsets = UIEdgeInsetsMake(0, 70, 0, 0);
    titleButton.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 40);
    
    [titleButton addTarget:self action:@selector(titleClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = titleButton;
}

-(void)titleClick:(UIButton *)titleButton
{
    HMDropdownMenu *menu = [HMDropdownMenu menu];
    
    //设置内容
    HMTitleMenuViewController *vc = [[HMTitleMenuViewController alloc] init];
    vc.view.width = 150;
    vc.view.height = 150;
    menu.contentController = vc;
    [menu showFrom:titleButton];

}

-(void)pop
{


}

-(void)friend
{

}
@end
