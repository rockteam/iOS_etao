//
//  Dapei_dingyueViewController.m
//  ios_etao
//
//  Created by student on 14-6-18.
//  Copyright (c) 2014年 rockteam. All rights reserved.
//

#import "Dapei_dingyueViewController.h"

@interface Dapei_dingyueViewController ()

@end

@implementation Dapei_dingyueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)initNavigationItem
{
    UIBarButtonItem *leftButtonItem2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(leftButtonItemClick)];
    self.navigationItem.leftBarButtonItem   = leftButtonItem2;
}

-(void)leftButtonItemClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title = @"订阅搭配分类";
    self.view.backgroundColor = [UIColor redColor];
    
    [self initNavigationItem];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
