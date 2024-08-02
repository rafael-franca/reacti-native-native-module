//
//  Counter.m
//  CounterApp
//
//  Created by Rafael França on 02/08/24.
//

//#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(Counter, RCTEventEmitter)
RCT_EXTERN_METHOD(increment)
RCT_EXTERN_METHOD(decrement)
RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)
@end
