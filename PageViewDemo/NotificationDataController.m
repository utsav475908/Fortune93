//
//  NotificationDataController.m
//  TotalConnect2
//
//  Created by Kumar Utsav on 19/04/16.
//  Copyright © 2016 Honeywell. All rights reserved.
//

#import "NotificationDataController.h"

@interface NotificationDataController ()
{
    NSArray *contents;
    NSArray *pageIndex;
    NSArray *pageCatalog;// what is there in each page
    NSArray *header;
    NSArray *detailedHeader;
    NSArray *yesButtonPresent;
    NSArray *noButtonPresent;
    
    NSArray *webservicesHeader;
    NSArray *webservicesDetailedHeader;
}

@end

@implementation NotificationDataController

- (void)viewDidLoad {
    [super viewDidLoad];
    webservicesHeader = @[@"Language",@"Fingerprint",@"InstantAlerts",@"Keep Email/SMS Alerts"];
    webservicesDetailedHeader = @[@"DoyouwanttochangeyourAppLanguage",@"Use your Fingerprint TouchID",@"Turn On Notifications",@"Now you have push notification activated."];
    pageCatalog = @[@"Language",@"Fingerprint Login",@"InstantAlerts",@"Keep Email/SMS Alerts"];
    yesButtonPresent = @[@"yes",@"yes",@"yes",@"yes"];
    noButtonPresent = @[@"no",@"yes",@"yes",@"yes"];
    
    NSUInteger pageCatalogCount = pageCatalog.count;
    for (int i = 0; i<pageCatalogCount; i++) {
       // header[i]= @"D"
       // header[i] = [webservicesHeader objectAtIndex:i];
        [header arrayByAddingObjectsFromArray:[webservicesHeader objectAtIndex:i]];
        [detailedHeader arrayByAddingObjectsFromArray:[webservicesDetailedHeader objectAtIndex:i]];
     }
    [self instantiateTheView];
    // Do any additional setup after loading the view from its nib.
   }

-(void)instantiateTheView {
    if([self isIPad]){
        // instantiate ipad .xib
        
        
    }
    if ([self isIPhone]) {
        // instantitate iphone.xib
        
        
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)yesButtonPressed:(UIButton *)sender {
}

- (IBAction)noButtonPressed:(UIButton *)sender {
}




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
