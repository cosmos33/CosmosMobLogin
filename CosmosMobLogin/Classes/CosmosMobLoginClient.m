//
//  CosmosMobLoginClient.m
//  CosmosMobLogin
//
//  Created by 陈国贤 on 2023/9/19.
//

#import "CosmosMobLoginClient.h"

@implementation CosmosMobLoginClient

+ (void)preLogin:(SecVerifyResultHander)handler
{
    [SVSDKHyVerify preLogin:^(NSDictionary * _Nullable resultDic, NSError * _Nullable error) {

        //判断预取号是否成功
        if (error == nil && resultDic != nil && [resultDic isKindOfClass:NSDictionary.class]) {
            //成功
            handler(resultDic,error);
        } else {
            //失败
            handler(resultDic,error);
        }
    }];
}

+ (void)openAuthPageWithModel:(nonnull SVSDKHyUIConfigure *)uiConfigure
         openAuthPageListener:(SecVerifyResultHander _Nullable )openAuthPageListener
       cancelAuthPageListener:(SecVerifyResultHander _Nullable )cancelAuthPageListener
          oneKeyLoginListener:(SecVerifyResultHander _Nullable )oneKeyLoginListener
{
    [SVSDKHyVerify openAuthPageWithModel:uiConfigure openAuthPageListener:openAuthPageListener cancelAuthPageListener:cancelAuthPageListener oneKeyLoginListener:oneKeyLoginListener];
}

@end
