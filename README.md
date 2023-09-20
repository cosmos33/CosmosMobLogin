# CosmosMobLogin

[![CI Status](https://img.shields.io/travis/xtra/CosmosMobLogin.svg?style=flat)](https://travis-ci.org/xtra/CosmosMobLogin)
[![Version](https://img.shields.io/cocoapods/v/CosmosMobLogin.svg?style=flat)](https://cocoapods.org/pods/CosmosMobLogin)
[![License](https://img.shields.io/cocoapods/l/CosmosMobLogin.svg?style=flat)](https://cocoapods.org/pods/CosmosMobLogin)
[![Platform](https://img.shields.io/cocoapods/p/CosmosMobLogin.svg?style=flat)](https://cocoapods.org/pods/CosmosMobLogin)

## Introduction

A warrper for mob one click login.
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS from 13.0

## Installation

CosmosMobLogin is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CosmosMobLogin'
```

## How to Use

init sdk
```swift
CosmosMobLoginClient.registerAppKey("moba6b6c6d6", appSecret: "b89d2427a3bc7ad1aea1e1e8c1d36bf3", privacyLevel: 2)
CosmosMobLoginClient.uploadPrivacyPermissionStatus(true) { success in     
}
```



## Author

xtra, xtra@msn.cn

## License

CosmosMobLogin is available under the MIT license. See the LICENSE file for more info.
