//
//  HMsearchBar.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/27.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "HMsearchBar.h"

@implementation HMsearchBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.font = [UIFont systemFontOfSize:15];
        self.background =[UIImage imageNamed:@"searchbar_textfield_background"];
        
        //通过init来创建初始化绝大部分控件，控件都是没有尺寸
        UIImageView *searchIcon = [[UIImageView alloc] init];
        searchIcon.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        searchIcon.width = 30;
        searchIcon.height = 30;
        searchIcon.contentMode = UIViewContentModeCenter;
        self.leftView = searchIcon;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    return self;
}

+(instancetype)searchBar
{
    return [[self alloc] init];
}
@end
