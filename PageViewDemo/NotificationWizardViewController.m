//
//  NotificationWizardViewController.m
//  TotalConnect2
//
//  Created by Kumar Utsav on 19/04/16.
//  Copyright © 2016 Honeywell. All rights reserved.
//

#import "NotificationWizardViewController.h"


@interface NotificationWizardViewController ()

@end

@implementation NotificationWizardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pageViewController = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.pageViewController.delegate = self;
    
    NotificationDataController *notificationDataCtrller = [[NotificationDataController alloc]init];
    NSArray *viewControllers = notificationDataCtrller
//    if ([self isIPad]) {
//        self.serviceDownTimeScreen = [[ServiceDownTimeScreen alloc] initWithNibName:@"ServiceDownTimeScreen-iPad" bundle:nil];
//    }
//    else {
//        self.serviceDownTimeScreen = [[ServiceDownTimeScreen alloc] initWithNibName:@"ServiceDownTimeScreen" bundle:nil];
//    }
//    self.serviceDownTimeScreen.iPadDelegate = self;
//    [self.serviceDownTimeScreen attemptToLoadOfflinePage];
//    //[self.serviceDownTimeScreen webFileExists];
//    [self startTimeoutTimer];
//    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPageViewControllerDataSource

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    return nil;
}
- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    return nil;
}


#pragma mark - Convenience Methods




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/








































-(BOOL) isIPad {
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad);
}

-(BOOL) isIPhone {
    return ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone);
}

-(BOOL) isIOS7 {
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        return NO;
    } else {
        return YES;
    }
}

-(BOOL) isIOS8 {
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_7_1) {
        return NO;
    } else {
        return YES;
    }
}

@end
