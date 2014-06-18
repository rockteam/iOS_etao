//
//  DapeiViewController.m
//  ios_etao
//
//  Created by student on 14-6-18.
//  Copyright (c) 2014年 rockteam. All rights reserved.
//

#import "DapeiViewController.h"
#import "Dapei_dingyueViewController.h"


@interface DapeiViewController ()

@end

@implementation DapeiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) initNavigationItem
{
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"dingyueIcon"] style:UIBarButtonItemStyleBordered  target:self action:@selector(leftBarButtonItemClick)];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    UIImageView *rightItemView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"beautySuitShow"]];
    
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightItemView];
    
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;

}

-(void)leftBarButtonItemClick
{
    Dapei_dingyueViewController *dingyueViewController = [[Dapei_dingyueViewController alloc] init];
    
    UINavigationController *nac = [[UINavigationController alloc] initWithRootViewController:dingyueViewController];
    
    [self.navigationController presentViewController:nac animated:YES completion:nil];
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    /*处理导航栏显示 */
    self.navigationItem.title = @"搭配";
    [self initNavigationItem];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
