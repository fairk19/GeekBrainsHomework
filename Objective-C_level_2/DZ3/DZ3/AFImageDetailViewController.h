//
//  AFImageDetailViewController.h
//  DZ3
//
//  Created by Александр on 24.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AFImageDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *truckImageView;
@property (weak, nonatomic) IBOutlet UILabel *truckDetailLabel;
@property (strong, nonatomic) UIImage *truckImage;
@property (strong, nonatomic) NSString *truckLabelText;

@end
