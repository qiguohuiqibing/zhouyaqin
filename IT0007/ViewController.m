//
//  ViewController.m
//  IT0007
//
//  Created by Mac on 16/6/23.
//  Copyright © 2016年 qiguohui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100, 100, 100);
    layer.backgroundColor =[UIColor yellowColor].CGColor;
    [self.view.layer addSublayer:layer];
    
    
    CALayer *bglayer = self.view.layer;
    bglayer.cornerRadius =50;
    bglayer.masksToBounds = YES;
    //[self creagecglayer];
    [self creagecglayer01];
}
- (void)creagecglayer{
    CALayer *layer =[CALayer layer];
    layer.bounds = CGRectMake(0, 0, 200, 200);
    layer.position=self.view.center;
    layer.anchorPoint = CGPointMake(0.5, 0.5);
    layer.backgroundColor=[UIColor redColor].CGColor;
    [self.view.layer addSublayer:layer];
    


}
-(void)creagecglayer01{
    

//    CALayer*layer01 =[CALayer layer];
//    layer01.bounds=CGRectMake(0, 0, 50, 50);
//    layer01.position=self.view.center;
//    layer01.backgroundColor=[UIColor yellowColor].CGColor;
//    layer01.shadowOffset=CGSizeMake(5, 5);
//    layer01.shadowOpacity = 1;
//    layer01.shadowRadius=20;
//    [self.view.layer addSublayer:layer01];
    
//    CALayer*layer =[CALayer layer];
//    layer.bounds = CGRectMake(0, 0, 100, 100);
//    layer.position=self.view.center;
//    layer.borderColor=2
    NSLog(@"这里有很多美女");
    NSInteger someLargeNumber =10;
     NSString *string = @"abc";
    for (int i = 0; i < someLargeNumber; i++)
    {
       // NSString *string = @"abc";
        //string = [string lowercaseString];
        string = [string
                  stringByAppendingString:@"xyz"];
        NSLog(@"%@", string);
    }
    
    CAEmitterCell*heart=[CAEmitterCell emitterCell];
    heart.name=@"heart";
    heart.birthRate=8;
    heart.lifetime=5;
    heart.lifetimeRange=6;
    heart.emissionLongitude =-1.6;
    heart.emissionLatitude=M_PI*2;
    heart.velocity=50;
    heart.velocityRange=50;
    heart.emissionLatitude =M_PI*2;
    heart.color=[UIColor redColor].CGColor;
    heart.alphaSpeed = -0.5/heart.lifetime;
    heart.contents=(id)[UIImage imageNamed:@"01"].CGImage;
    
    CAEmitterLayer*layer = [CAEmitterLayer layer];
    layer.emitterSize=CGSizeMake(50, 50);
    layer.emitterPosition = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height);
    layer.emitterShape = kCAEmitterLayerCuboid;
    layer.renderMode=kCAEmitterLayerSurface;
    layer.emitterCells = @[heart];
    [self.view.layer addSublayer:layer];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
