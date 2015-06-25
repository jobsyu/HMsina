//
//  UIBarButtonItem+Extension.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/25.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [Btn addTarget:target action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    
    [Btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [Btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    
    Btn.size = Btn.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:Btn];
}


@end
