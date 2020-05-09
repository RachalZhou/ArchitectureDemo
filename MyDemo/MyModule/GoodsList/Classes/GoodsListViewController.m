//
//  GoodsListViewController.m
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import "GoodsListViewController.h"

typedef void(^SelectGoodsCallback)(NSInteger);

@interface GoodsListViewController ()

@property (nonatomic, copy) NSString *keyWord;
@property (nonatomic, assign) NSInteger kindId;
@property (nonatomic, assign) NSInteger storeId;
@property (nonatomic, copy) SelectGoodsCallback callback;

@end

@implementation GoodsListViewController

- (instancetype)initWithKeyWord:(NSString *)keyWord kindId:(NSInteger)kindId storeId:(NSInteger)storeId {
    self = [super init];
    if (self) {
        self.keyWord = keyWord;
        self.kindId = kindId;
        self.storeId = storeId;
    }
    return self;
}

- (instancetype)initWithKeyWord:(NSString *)keyWord kindId:(NSInteger)kindId storeId:(NSInteger)storeId didSelectGoodsCallback:(void(^)(NSInteger goodsId))callback {
    self.callback = callback;
    return [self initWithKeyWord:keyWord kindId:kindId storeId:storeId];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"商品列表 Objc";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:({
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 360, 200)];
        label.numberOfLines = 0;
        label.text = [NSString stringWithFormat:@"关键词：%@\n分类ID：%ld\n店铺ID：%ld", self.keyWord, self.kindId, self.storeId];
        label;
    })];
    
    [self.view addSubview:({
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 320, 100, 60)];
        btn.backgroundColor = [UIColor orangeColor];
        [btn setTitle:@"商品详情" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(goToDetail) forControlEvents:UIControlEventTouchUpInside];
        btn;
    })];
}

- (void)goToDetail {
    if (self.callback) {
        self.callback(8088);
    }
}

@end
