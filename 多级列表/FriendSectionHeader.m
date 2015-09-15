//
//  FriendSectionHeader.m
//  多级列表
//
//  Created by ap2 on 15/9/15.
//  Copyright (c) 2015年 ap2. All rights reserved.
//

#import "FriendSectionHeader.h"

@implementation FriendSectionHeader

+ (instancetype)friendSectionHeader
{
    FriendSectionHeader *header =  [[[NSBundle mainBundle] loadNibNamed:@"FriendSectionHeader" owner:nil options:nil] lastObject];
    [header.avatarBtn setImage: [UIImage imageNamed:@"arrow_sel"] forState:UIControlStateSelected];
    return header;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
