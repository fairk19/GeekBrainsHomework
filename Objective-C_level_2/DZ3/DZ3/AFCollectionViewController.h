//
//  AFCollectionViewController.h
//  DZ3
//
//  Created by Александр on 24.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AFCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSArray *truckImages;
@property (strong,nonatomic) NSArray *truckDescriptions;

@end
