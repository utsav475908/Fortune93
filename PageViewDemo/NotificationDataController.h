//
//  NotificationDataController.h
//  TotalConnect2
//
//  Created by Kumar Utsav on 19/04/16.
//  Copyright © 2016 Honeywell. All rights reserved.
//

#import "TCViewController.h"

@interface NotificationDataController : TCViewController

@property(weak,nonatomic)IBOutlet UILabel *header;
@property(weak,nonatomic)IBOutlet UILabel *detailedHeader;
- (IBAction)yesButtonPressed:(UIButton *)sender;
- (IBAction)noButtonPressed:(UIButton *)sender;



@end
