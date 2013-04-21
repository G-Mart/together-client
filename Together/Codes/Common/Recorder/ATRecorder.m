//
//  ATRecorder.m
//  ___PROJECTNAME___
//
//  Created by appletree on 13-2-26.
//
//

#import "ATRecorder.h"

@implementation ATRecorder

@synthesize delegate = _delegate;
@synthesize fileUrl  = _fileUrl;
@synthesize pTime    = _pTime;


+(id)startRecord:(NSURL *)fileUrl recordTime:(float)recordTime
{
    
    [[NSFileManager defaultManager] removeItemAtURL:fileUrl error:nil];
    return [[self alloc] _initWithFileUrl:fileUrl recordTime:recordTime];
}

- (id)_initWithFileUrl:(NSURL*)fileUrl recordTime:(float)recordTime
{
    self = [super init];
    if (self) {
        _pTime = recordTime;
        self.fileUrl = fileUrl;
    }
    return self;
}

- (NSDictionary *) recordSettings
{
    NSDictionary *recordSettings = [[NSDictionary alloc] initWithObjectsAndKeys:
                                    [NSNumber numberWithFloat: 8000.0], AVSampleRateKey,
                                    [NSNumber numberWithInt: 1], AVNumberOfChannelsKey,
                                    [NSNumber numberWithInt: 16],AVLinearPCMBitDepthKey,
                                    [NSNumber numberWithBool:NO],AVLinearPCMIsBigEndianKey,
                                    [NSNumber numberWithBool:NO],AVLinearPCMIsFloatKey,
                                    nil];
    return recordSettings;
}


- (void)start
{
    [self cancelRecord];
    
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setActive:NO error:nil];
    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    [session setActive:YES error:nil];
    
    _recorder = [[AVAudioRecorder alloc] initWithURL:_fileUrl settings:[self recordSettings] error:nil];
    [_recorder setDelegate:self];
    [_recorder prepareToRecord];
    [_recorder recordForDuration:_pTime];
}
- (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag
{
    [self cancelRecord];
    if ([self.delegate respondsToSelector:@selector(ATRecorderSuccess:)]) {
        [self.delegate ATRecorderSuccess:self];
    }
}

- (void)audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError *)error
{
    
}



- (void)stop
{
    [_recorder stop];
}

- (void)dealloc
{
    
}

- (void)cancelRecord
{
    [_recorder setDelegate:nil];
    _recorder = nil;
}


@end