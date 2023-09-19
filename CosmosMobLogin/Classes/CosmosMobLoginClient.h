//
//  CosmosMobLoginClient.h
//  CosmosMobLogin
//
//  Created by 陈国贤 on 2023/9/19.
//

#import <Foundation/Foundation.h>
#import <SecVerify/SVSDKHyVerify.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^CosmosMobResultHander)(NSDictionary * _Nullable resultDic, NSError * _Nullable error);

@interface CosmosMobLoginClient : NSObject
+ (void)preLogin:(nullable SecVerifyResultHander)handler;
+ (void)openAuthPageWithModel:(nonnull SVSDKHyUIConfigure *)uiConfigure
         openAuthPageListener:(SecVerifyResultHander _Nullable )openAuthPageListener
       cancelAuthPageListener:(SecVerifyResultHander _Nullable )cancelAuthPageListener
          oneKeyLoginListener:(SecVerifyResultHander _Nullable )oneKeyLoginListener;


@end

NS_ASSUME_NONNULL_END
