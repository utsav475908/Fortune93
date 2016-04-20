//
//  NotificationWizardViewController.h
//  TotalConnect2
//
//  Created by Kumar Utsav on 19/04/16.
//  Copyright © 2016 Honeywell. All rights reserved.
//

#import "TCViewController.h"
#import "NotificationDataController.m"

@interface NotificationWizardViewController : TCViewController<UIPageViewControllerDataSource, UIPageViewControllerDelegate >

@property(strong,nonatomic)UIPageViewController *pageViewController;
@property(strong,nonatomic)NotificationDataController *dataController;

@end
