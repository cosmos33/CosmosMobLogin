//
//  CosmosMobLoginClient.h
//  CosmosMobLogin
//
//  Created by 陈国贤 on 2023/9/19.
//

#import <Foundation/Foundation.h>



NS_ASSUME_NONNULL_BEGIN
typedef void(^SecVerifyResultHander)(NSDictionary * _Nullable resultDic, NSError * _Nullable error);

@interface CosmosMobLoginClient : NSObject


/**
 注册appKey、appSecret,确保在 didFinishLaunchingNotification 中调用

 @param appKey appKey
 @param appSecret appSecret
 @param privacyLevel 隐私协议级别(需要同意一次=2,不需要同意=0,建议使用2,避免政策变动，功能不可用)

 */
+ (void)registerAppKey:(NSString * _Nonnull)appKey
             appSecret:(NSString * _Nonnull)appSecret
          privacyLevel:(int)privacyLevel;

/**
 上传隐私协议授权状态
 @param isAgree 是否同意（用户授权后的结果）
 */
+ (void)uploadPrivacyPermissionStatus:(BOOL)isAgree
                             onResult:(void (^_Nullable)(BOOL success))handler;


+ (void)preLogin:(nullable SecVerifyResultHander)handler;
+ (void)loginAuth:(nullable SecVerifyResultHander)handler;

@end

NS_ASSUME_NONNULL_END
