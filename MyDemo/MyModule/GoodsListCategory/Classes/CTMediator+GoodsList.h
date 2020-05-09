//
//  CTMediator+GoodsList.h
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (GoodsList)

- (UIViewController *)viewControllerForGoodsList:(NSString *)keyWord kindId:(NSInteger)kindId storeId:(NSInteger)storeId didSelectGoodsCallback:(void(^)(NSInteger goodsId))callback;

@end

NS_ASSUME_NONNULL_END
