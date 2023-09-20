//
//  CosmosMobLoginClient.m
//  CosmosMobLogin
//
//  Created by 陈国贤 on 2023/9/19.
//

#import "CosmosMobLoginClient.h"

#import <SecVerify/SVSecVerify.h>
#import <MOBFoundation/MobSDK+Privacy.h>
#import <MOBFoundation/MobSDK.h>

@implementation CosmosMobLoginClient

+ (void)preLogin:(SecVerifyResultHander)handler
{
    [SVSecVerify preLogin:^(NSDictionary * _Nullable resultDic, NSError * _Nullable error) {
        
        if (error == nil && resultDic != nil && [resultDic isKindOfClass:NSDictionary.class]) {
            NSString * securityphone = resultDic[@"securityPhone"];
            handler(resultDic,error);
        } else {
            handler(resultDic,error);
        }
    }];
}

+ (void)loginAuth:(nullable SecVerifyResultHander)handler
{
    [SVSecVerify loginAuth:handler];
}

+ (void)registerAppKey:(NSString * _Nonnull)appKey
             appSecret:(NSString * _Nonnull)appSecret
          privacyLevel:(int)privacyLevel {
    
    [MobSDK registerAppKey:appKey appSecret:appSecret privacyLevel:privacyLevel];
}

+ (void)uploadPrivacyPermissionStatus:(BOOL)isAgree
                             onResult:(void (^_Nullable)(BOOL success))handler
{
    [MobSDK uploadPrivacyPermissionStatus:YES onResult:^(BOOL success) {
        handler(success);
    }];
}


@end
