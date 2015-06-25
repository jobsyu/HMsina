//
//  UIBarButtonItem+Extension.h
//  HMsina
//
//  Created by 於程鹏 on 15/6/25.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
@end

