//
//  Target_GoodsList.m
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import "Target_GoodsList.h"
#import "GoodsListViewController.h"

@implementation Target_GoodsList

- (UIViewController *)Action_viewControllerForGoodsList:(NSDictionary *)params {
    NSString *keyWord = params[@"keyWord"];
    NSInteger kindId = [params[@"kindId"] integerValue];
    NSInteger storeId = [params[@"storeId"] integerValue];
    
    GoodsListViewController *vc = [[GoodsListViewController alloc] initWithKeyWord:keyWord
                                                                             kindId:kindId
                                                                            storeId:storeId];
    return vc;
}

@end
