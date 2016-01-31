//
//  ViewController.m
//  DZ4
//
//  Created by Александр on 29.01.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *viewTriangle;
@property (weak, nonatomic) IBOutlet UIView *viewSquare;
@property (weak, nonatomic) IBOutlet UIView *viewCircle;
@property (weak, nonatomic) IBOutlet UIView *viewSemicircle;

@end

@implementation ViewController

- (UIColor *)getColor: (int) val
{
    switch (val) {
        case 0:
        {
            return [UIColor redColor];
        }
        case 1:
        {
            return [UIColor blueColor];
        }
        case 2:
        {
            return [UIColor orangeColor];
        }
        case 3:
        {
            return [UIColor yellowColor];
        }
        case 4:
        {
            return [UIColor grayColor];
        }
        case 5:
        {
            return [UIColor greenColor];
        }
        default:
            return [UIColor blackColor];
            break;
    }
}
- (IBAction)changeColor:(id)sender {
    
    int valueColor = arc4random() % 5;
    self.viewTriangle.backgroundColor = [self getColor:valueColor];
    
    valueColor = arc4random() % 5;
    self.viewCircle.backgroundColor = [self getColor:valueColor];
    
    valueColor = arc4random() % 5;
    self.viewSemicircle.backgroundColor = [self getColor:valueColor];
    
    valueColor = arc4random() % 5;
    self.viewSquare.backgroundColor = [self getColor:valueColor];
}

- (IBAction)startAnimation:(id)sender {
    
    CALayer *layerTriangle = self.viewTriangle.layer;
    CALayer *layerSquare = self.viewSquare.layer;
    CALayer *layerCircle = self.viewCircle.layer;
    CALayer *layerSemicircle = self.viewSemicircle.layer;
    
    
    CABasicAnimation *animationTop = [CABasicAnimation animation];
    animationTop.keyPath = @"position";
    animationTop.fromValue = [NSValue valueWithCGPoint: layerTriangle.position];
    animationTop.toValue = [NSValue valueWithCGPoint: layerSquare.position];
    animationTop.duration = 1;
    animationTop.removedOnCompletion = NO;
    animationTop.fillMode = kCAFillModeForwards;
    
    [layerTriangle addAnimation:animationTop forKey:@"top"];
    
    CABasicAnimation *animationLeft = [CABasicAnimation animation];
    animationLeft.keyPath = @"position";
    animationLeft.fromValue = [NSValue valueWithCGPoint: layerSquare.position];
    animationLeft.toValue = [NSValue valueWithCGPoint: layerCircle.position];
    animationLeft.duration = 1;
    animationLeft.removedOnCompletion = NO;
    animationLeft.fillMode = kCAFillModeForwards;

    [layerSquare addAnimation:animationLeft forKey:@"left"];
    
    CABasicAnimation *animationBottom = [CABasicAnimation animation];
    animationBottom.keyPath = @"position";
    animationBottom.fromValue = [NSValue valueWithCGPoint: layerCircle.position];
    animationBottom.toValue = [NSValue valueWithCGPoint: layerSemicircle.position];
    animationBottom.duration = 1;
    animationBottom.removedOnCompletion = NO;
    animationBottom.fillMode = kCAFillModeForwards;
    
    animationBottom.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [layerCircle addAnimation:animationBottom forKey:@"bottom"];

    CABasicAnimation *animationRight = [CABasicAnimation animation];
    animationRight.keyPath = @"position";
    animationRight.fromValue = [NSValue valueWithCGPoint: layerSemicircle.position];
    animationRight.toValue = [NSValue valueWithCGPoint: layerTriangle.position];
    animationRight.duration = 1;
    animationRight.removedOnCompletion = NO;
    animationRight.fillMode = kCAFillModeForwards;
    
    animationRight.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [layerSemicircle addAnimation:animationRight forKey:@"right"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBezierPath *pathTriangle = [[UIBezierPath alloc] init];
    [pathTriangle moveToPoint:(CGPoint){25, 0}];
    [pathTriangle addLineToPoint:(CGPoint){50, 50}];
    [pathTriangle addLineToPoint:(CGPoint){0, 50}];
    [pathTriangle addLineToPoint:(CGPoint){25, 0}];
    
    CAShapeLayer *maskTriangle = [CAShapeLayer new];
    maskTriangle.frame = self.viewTriangle.bounds;
    maskTriangle.path = pathTriangle.CGPath;
    
    self.viewTriangle.layer.mask = maskTriangle;
    
    CAShapeLayer *circleLayer = [CAShapeLayer layer];
    [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 50, 50)] CGPath]];
    
    self.viewCircle.layer.mask = circleLayer;
    
    CAShapeLayer *semicircleleLayer = [CAShapeLayer layer];
    [semicircleleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(25, 0, 50, 50)] CGPath]];
    
    self.viewSemicircle.layer.mask = semicircleleLayer;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
