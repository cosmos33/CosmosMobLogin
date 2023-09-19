//
//  CosmosMobLogin.m
//  CosmosMobLogin
//
//  Created by 陈国贤 on 2023/9/19.
//

#import "CosmosMobLogin.h"


@implementation CosmosMobLogin




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




@end
