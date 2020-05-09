//
//  GoodsListViewController.h
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GoodsListViewController : UIViewController

- (instancetype)initWithKeyWord:(NSString *)keyWord kindId:(NSInteger)kindId storeId:(NSInteger)storeId didSelectGoodsCallback:(void(^)(NSInteger goodsId))callback;

@end

NS_ASSUME_NONNULL_END
