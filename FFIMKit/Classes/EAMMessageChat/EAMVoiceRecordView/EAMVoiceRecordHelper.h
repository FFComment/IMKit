//
//  EAMVoiceRecordHelper.h
//  edu_anhui_messageKit
//
//  Created by Sunny_zhao on 2018/5/8.
//  Copyright © 2018年 yangjuanping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef BOOL(^XHPrepareRecorderCompletion)();
typedef void(^XHStartRecorderCompletion)();
typedef void(^XHStopRecorderCompletion)();
typedef void(^XHPauseRecorderCompletion)();
typedef void(^XHResumeRecorderCompletion)();
typedef void(^XHCancellRecorderDeleteFileCompletion)();
typedef void(^XHRecordProgress)(float progress);
typedef void(^XHPeakPowerForChannel)(float peakPowerForChannel);


@interface EAMVoiceRecordHelper : NSObject

@property (nonatomic, copy) XHStopRecorderCompletion maxTimeStopRecorderCompletion;
@property (nonatomic, copy) XHRecordProgress recordProgress;
@property (nonatomic, copy) XHPeakPowerForChannel peakPowerForChannel;
@property (nonatomic, copy, readonly) NSString *recordPath;
@property (nonatomic, copy) NSString *recordDuration;
@property (nonatomic) float maxRecordTime; // 默认 60秒为最大
@property (nonatomic, readonly) NSTimeInterval currentTimeInterval;

- (void)prepareRecordingWithPath:(NSString *)path prepareRecorderCompletion:(XHPrepareRecorderCompletion)prepareRecorderCompletion;
- (void)startRecordingWithStartRecorderCompletion:(XHStartRecorderCompletion)startRecorderCompletion;
- (void)pauseRecordingWithPauseRecorderCompletion:(XHPauseRecorderCompletion)pauseRecorderCompletion;
- (void)resumeRecordingWithResumeRecorderCompletion:(XHResumeRecorderCompletion)resumeRecorderCompletion;
- (void)stopRecordingWithStopRecorderCompletion:(XHStopRecorderCompletion)stopRecorderCompletion;
- (void)cancelledDeleteWithCompletion:(XHCancellRecorderDeleteFileCompletion)cancelledDeleteCompletion;

@end
