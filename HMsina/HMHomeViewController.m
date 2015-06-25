//
//  HMHomeViewController.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/25.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "HMHomeViewController.h"

@implementation HMHomeViewController

-(void)viewDidLoad{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pop) image:@"navigationbar_pop" highImage:@"navigationbar_pop_highlighted"];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(friend) image:@"navigationbar_friendsearch" highImage:@"navigationbar_friendsearch_highlighted"];
}

-(void)pop
{


}

-(void)friend
{

}
@end
