//
//  ViewController.m
//  Wut
//
//  Created by Sørensen, Johan on 23.09.14.
//  Copyright (c) 2014 Johan Sørensen. All rights reserved.
//

#import "ViewController.h"
#import "Wut-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonTapped:(id)sender {
    ThingViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"thingViewController"];
    [self presentViewController:vc animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
