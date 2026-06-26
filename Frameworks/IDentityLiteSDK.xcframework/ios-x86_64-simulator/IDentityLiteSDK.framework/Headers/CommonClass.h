//
//  CommonClass.h
//  AppItFramework
//
//  Created by Amol Deshmukh on 24/02/23.
//  Copyright © 2023 idmission solutions pvt ltd . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommonClass : NSObject

+(NSString*)deviceName;
+(AVCaptureDevice*)getAVCaptureDevice;

@end

NS_ASSUME_NONNULL_END
