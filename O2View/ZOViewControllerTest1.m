//
//  ZOViewControllerTest1.m
//  testapp1
//
//  Created by 麒麟风 on 2017/5/9.
//  Copyright © 2017年 test. All rights reserved.
//

#import "ZOViewControllerTest1.h"

@interface ZOViewControllerTest1 ()
@property(nonatomic,strong)UIView *imageView;
@end

@implementation ZOViewControllerTest1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //加阴影--任海丽编辑
    [self.view addSubview:self.imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(UIView *)imageView
{
    if (!_imageView) {
        //加阴影--任海丽编辑
        _imageView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
        _imageView.backgroundColor = [UIColor blueColor];
        _imageView.layer.shadowColor = [UIColor blackColor].CGColor;//shadowColor阴影颜色
        _imageView.layer.shadowOffset = CGSizeMake(4,4);//shadowOffset阴影偏移,x向右偏移4，y向下偏移4，默认(0, -3),这个跟shadowRadius配合使用
        _imageView.layer.shadowOpacity = 0.8;//阴影透明度，默认0
        _imageView.layer.shadowRadius = 4;//阴影半径，默认3
    }
    return _imageView;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
