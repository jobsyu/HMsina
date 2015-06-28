//
//  HMDropdownMenu.m
//  HMsina
//
//  Created by 於程鹏 on 15/6/27.
//  Copyright (c) 2015年 於程鹏. All rights reserved.
//

#import "HMDropdownMenu.h"

@interface HMDropdownMenu()
/**
 * 将来用来存放内容的容器
 */
@property (nonatomic,weak) UIImageView *containerView;
@end

@implementation HMDropdownMenu

-(UIImageView *)containerView
{
    if(!_containerView)
    {
       //添加一个灰色图片控件
       UIImageView *containerView = [[UIImageView alloc] init];
       containerView.image = [UIImage imageNamed:@"popover_background"];
       containerView.userInteractionEnabled =YES;
       [self addSubview:containerView];
       self.containerView = containerView;
    }
    
    return _containerView;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

+(instancetype)menu
{
    return [[self alloc] init];
}


-(void)setContent:(UIView *)content
{
    _content = content;
    
    //调整内容的位置
    content.x = 10;
    content.y = 15;
    
    //调整内容的宽度
    //content.width = self.containerView.width - 2 * content.x;
    
    //设置内容到灰色图片中
    self.containerView.height = CGRectGetMaxY(content.frame) + 11;
    self.containerView.width = CGRectGetMaxX(content.frame) + 9;
    //添加
    [self.containerView addSubview:content];
}

-(void)setContentController:(UIViewController *)contentController
{
    _contentController = contentController;
    
    self.content = contentController.view;
}

-(void)showFrom:(UIView *)from
{
    //1.获取最上面的窗口
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    
    //2.添加自己到窗口上
    [window addSubview:self];
    
    self.frame = window.bounds;
    
    //self.containerView.x =
    
    CGRect newframe = [from convertRect:from.bounds toView:window];
    self.containerView.centerX = CGRectGetMidX(newframe);
    self.containerView.y = CGRectGetMaxY(newframe);
}

-(void)dismiss
{
    [self removeFromSuperview];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self dismiss];
}
@end
