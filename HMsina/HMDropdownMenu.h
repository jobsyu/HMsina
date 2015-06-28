//
//  HMDropdownMenu.h
//  HMsina
//
//  Created by 於程鹏 on 15/6/27.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HMDropdownMenu : UIView

+(instancetype)menu;

//显示
-(void)showFrom:(UIView *)from;
//销毁
-(void)dismiss;
//内容
@property (nonatomic,strong) UIView *content;
//内容控制器
@property (nonatomic,strong) UIViewController *contentController;
@end
