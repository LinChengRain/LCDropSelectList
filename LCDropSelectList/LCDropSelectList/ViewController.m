//
//  ViewController.m
//  LCDropSelectList
//
//  Created by qunqu on 16/10/11.
//  Copyright © 2016年 YuChangLin. All rights reserved.
//

#import "ViewController.h"
#import "DropSelectListView.h"
@interface ViewController ()
@property (nonatomic, strong) DropSelectListView *listView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *dataSource = @[@"红色",@"黄色",@"蓝色",@"黑色"];
   
    // 设置数据源
    self.listView.listItems = dataSource;
    // 设置最大列数
    self.listView.maxRows = dataSource.count;
    // 默认标题
    self.listView.defaultTitle = @"请选择专业：";
    // 下拉选中的block
    [self.view addSubview:self.listView];
    
    __weak typeof(self) weakSelf = self;
    self.listView.ClickDropDown = ^(NSInteger index){
        
        NSLog(@"选择了-------------:%@",weakSelf.listView.listItems[index]);
    };

}

- (DropSelectListView*)listView{
    if (_listView == nil) {
        
        _listView = [[DropSelectListView alloc] initWithFrame:CGRectMake(20, 300, 300, 30)];
        // 设置数据源
//        _listView.listItems = dataSource;
        // 边框颜色
        _listView.borderColor = [UIColor lightGrayColor];
        // 边框宽度
        _listView.borderWidth = 1.0f;
        // 设置最大列数
//        _listView.maxRows = dataSource.count;
        // 圆角
        _listView.cornerRadius = 5;
        // 背景颜色
        _listView.comBackgroundColor = [UIColor whiteColor];
        // 标题大小
        _listView.titleSize = 14;

    }
    return _listView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
