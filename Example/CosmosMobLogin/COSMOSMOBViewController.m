//
//  COSMOSMOBViewController.m
//  CosmosMobLogin
//
//  Created by xtra on 09/19/2023.
//  Copyright (c) 2023 xtra. All rights reserved.
//

#import "COSMOSMOBViewController.h"
#import <CosmosMobLogin/CosmosMobLoginClient.h>

@interface COSMOSMOBViewController ()

@end

@implementation COSMOSMOBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(50, 100, 100, 50);
    btn.backgroundColor = UIColor.blackColor;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClicked {
    [CosmosMobLoginClient preLogin:^(NSDictionary * _Nullable resultDic, NSError * _Nullable error) {
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
