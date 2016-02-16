//
//  AddExtentionVariableViewController.m
//  RuntimeLearn
//
//  Created by xsh on 16/1/19.
//  Copyright © 2016年 xsh. All rights reserved.
//

#import "AddExtentionVariableViewController.h"
#import "XiaoMing+MutipleName.h"

@interface AddExtentionVariableViewController ()
- (IBAction)addName:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *chineseNameTf;
@property(nonatomic,retain) XiaoMing *xiaoMing;
@end

@implementation AddExtentionVariableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.xiaoMing = [XiaoMing new];
    self.xiaoMing.englishName = @"XiaoMing";
    NSLog(@"My English name is %@",self.xiaoMing.englishName);
    self.xiaoMing.chineseName = @"xsh";
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)answer{
    NSLog(@"My Chinese name is %@",self.xiaoMing.chineseName);
    self.chineseNameTf.text = self.xiaoMing.chineseName;
}

- (IBAction)addName:(id)sender {
    [self answer];
}
@end
