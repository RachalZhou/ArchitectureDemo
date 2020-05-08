//
//  ViewController.m
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import "ViewController.h"
#import "ObjcViewController.h"
#import "MyDemo-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"组件化实现Objc/Swift混编";
}

- (IBAction)fromObjc:(UIButton *)sender {
    ObjcViewController *vc = [[ObjcViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)fromSwift:(UIButton *)sender {
    SwiftViewController *vc = [[SwiftViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
