//
//  CosmosMobLogin.h
//  CosmosMobLogin
//
//  Created by 陈国贤 on 2023/9/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^CosmosMobResultHander)(NSDictionary * _Nullable resultDic, NSError * _Nullable error);

@interface CosmosMobLogin : NSObject

+ (void)preLogin:(nullable CosmosMobResultHander)handler;



@end

NS_ASSUME_NONNULL_END
