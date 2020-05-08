//
//  CTMediator+GoodsList.m
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import "CTMediator+GoodsList.h"

@implementation CTMediator (GoodsListActions)

- (UIViewController *)viewControllerForGoodsList:(NSString *)keyWord kindId:(NSInteger)kindId storeId:(NSInteger)storeId {
    NSDictionary *params = @{@"keyWord": keyWord,
                             @"kindId": @(kindId),
                             @"storeId": @(storeId)};
    UIViewController *vc = [self performTarget:@"GoodsList"
                                        action:@"viewControllerForGoodsList"
                                        params:params
                             shouldCacheTarget:NO];
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }else {
        return [[UIViewController alloc] init];
    }
}

@end
