//
//  ChieryBusiness2.m
//  ChieryBusiness2
//
//  Created by chiery on 2018/1/9.
//  Copyright © 2018年 com.chiery.com. All rights reserved.
//

#import "ChieryBusiness2.h"
#import "ChieryCommonKit.h"


@interface ChieryBusiness2 ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ChieryBusiness2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}


- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.text = @"business2";
        _label.font = [UIFont systemFontOfSize:20];
        _label.backgroundColor = [UIColor blueColor];
        _label.textColor = [UIColor whiteColor];
    }
    return _label;
}


@end
