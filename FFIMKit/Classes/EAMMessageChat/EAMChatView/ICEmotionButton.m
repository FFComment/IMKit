//
//  ICEmotionButton.m
//  XZ_WeChat
//
//  Created by 郭现壮 on 16/4/6.
//  Copyright © 2016年 gxz All rights reserved.
//

#import "ICEmotionButton.h"
#import "NSString+Extension.h"
#import "FF_BoundlePath.h"

@implementation ICEmotionButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}


- (void)setup
{
    self.titleLabel.font             = [UIFont systemFontOfSize:32.0];
    self.adjustsImageWhenHighlighted = NO;
}

- (void)setEmotion:(XZEmotion *)emotion
{
    _emotion               = emotion;
    if (emotion.code) {
        [self setTitle:self.emotion.code.emoji forState:UIControlStateNormal];
    } else if (emotion.face_name) {
//        [self setImage:[UIImage imageNamed:self.emotion.face_name] forState:UIControlStateNormal];
        NSArray *array = [emotion.face_name componentsSeparatedByString:@"."];
        NSString *path = [FF_BoundlePath ff_imagePathWithName:[NSString stringWithFormat:@"%@",array[0]] bundle:@"FFIMKit" targetClass:[self class] oftype:@"png"];
        [self setImage:[UIImage imageWithContentsOfFile:path] forState:UIControlStateNormal];
    }
}


@end
