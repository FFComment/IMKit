//
//  EAMCommentEmoji.m
//  edu_anhui_messageKit
//
//  Created by Sunny_zhao on 2018/5/7.
//  Copyright © 2018年 yangjuanping. All rights reserved.
//

#import "EAMCommentEmoji.h"
#import "EAMChatEmojiIcons.h"

@implementation EAMCommentEmoji

+(NSArray*)emojiObjsWithPage:(NSInteger)page{
    if (page>[[self class]pageCountIsSupport]) {
        return @[];
    }
    NSMutableArray * array_common_s = [NSMutableArray array];
    NSInteger count_line = [[self class]countInOneLine];
    NSInteger start_count = (count_line*EmojiIMG_Lines-1)*page;
    NSInteger end_count = MIN([EAMChatEmojiIcons getEmojiPopCount], start_count+(count_line*EmojiIMG_Lines-1));
    for (int tag = (int)start_count;tag < end_count; tag++) {
        EAMCommentEmoji * obj = [EAMCommentEmoji new];
//        obj.emojiImgName = [NSString stringWithFormat:@"Face.bundle/%@",[EAMChatEmojiIcons getEmojiPopIMGNameByTag:tag]];
//        obj.emojiName = [NSString stringWithFormat:@"Face.bundle/%@",[EAMChatEmojiIcons getEmojiPopNameByTag:tag]];
//        obj.emojiString = [NSString stringWithFormat:@"Face.bundle/%@",[EAMChatEmojiIcons getEmojiNameByTag:tag]];
        obj.emojiImgName = [NSString stringWithFormat:@"%@",[EAMChatEmojiIcons getEmojiPopIMGNameByTag:tag]];
        obj.emojiName = [NSString stringWithFormat:@"%@",[EAMChatEmojiIcons getEmojiPopNameByTag:tag]];
        obj.emojiString = [NSString stringWithFormat:@"%@",[EAMChatEmojiIcons getEmojiNameByTag:tag]];
        [array_common_s addObject:obj];
    }
    [array_common_s addObject:[[self class] del_Obj]];
    return array_common_s;
}

+(NSInteger)pageCountIsSupport{
    NSInteger count_all = [EAMChatEmojiIcons getEmojiPopCount];
    NSInteger page_one = [[self class]onePageCount];
    return  (count_all/page_one)+((int)((count_all%page_one)!=0));
}

@end
