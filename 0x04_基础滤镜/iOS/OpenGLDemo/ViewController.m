//
//  ViewController.m
//  OpenGLDemo
//
//  Created by David.Dai on 2018/9/10.
//  Copyright © 2018年 David.Dai. All rights reserved.
//

#import "ViewController.h"
#import "OpenGLView.h"
#import <CoreMedia/CoreMedia.h>
#import "OpenGLSimpleRender.h"

@interface ViewController ()
@property (nonatomic, strong) OpenGLView *glView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.glView = [[OpenGLView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.glView];
    [self.view sendSubviewToBack:self.glView];
}

- (IBAction)sliderValueChange:(id)sender {
    OpenGLSimpleRender *simpleRender = [self.glView valueForKey:@"render"];
    [simpleRender setEffectPercent:((UISlider *)sender).value];
}

@end
