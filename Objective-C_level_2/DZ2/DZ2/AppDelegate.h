//
//  AppDelegate.h
//  DZ2
//
//  Created by Александр on 18.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

/*
 - (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 Этот метод вызывает у контроллера из которго был начат переход.
 
 NSProxy
 Его задача заключается в предварительном конфигурировании группы UIKit объектов в одном месте. Мы описываем некоторый набор действий, который будет применяться к каждому создаваемому объекту (таких как задание цвета, шрифта и других), удовлетворяющему некоторым условиям.
*/
#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

