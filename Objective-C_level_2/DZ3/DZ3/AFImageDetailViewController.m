//
//  AFImageDetailViewController.m
//  DZ3
//
//  Created by Александр on 24.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import "AFImageDetailViewController.h"

@interface AFImageDetailViewController ()

@end

@implementation AFImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.truckImageView.image = self.truckImage;
    self.truckDetailLabel.text = self.truckLabelText;
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

@end
