//
//  Header.h
//  appit-ios
//
//  Created by Pranjal Lamba on 07/11/17.
//  Copyright © 2017 IDMission. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface VideoCaptureFingerprintViewController : UIViewController<AVCaptureVideoDataOutputSampleBufferDelegate>

@property (nonatomic, readonly) AVCaptureSession *session;
@property (nonatomic, readonly) AVCaptureDevice *device;
@property (nonatomic, readonly) AVCaptureVideoDataOutput *videoOutput;
@property (nonatomic, readonly) AVCaptureVideoPreviewLayer *videoPreviewLayer;
@property (nonatomic, readonly) AVCaptureStillImageOutput *avCaptureStillImageOutput;

@property (nonatomic, assign) BOOL torchOn;
@property (nonatomic, assign) BOOL processHighDefinitionImage;

@end
