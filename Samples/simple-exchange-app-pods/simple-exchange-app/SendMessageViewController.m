//
//  SendMessageViewController.m
//  simple-exchange-app
//
//  Created by Gustavo on 10/9/14.
//  Copyright (c) 2014 Lagash. All rights reserved.
//

#import "SendMessageViewController.h"
#import "BaseController.h"
#import <office365_exchange_sdk/office365_exchange_sdk.h>

@interface SendMessageViewController ()

@end

@implementation SendMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)SendMail:(id)sender{

    [[BaseController alloc] getClient:^(MSOutlookClient * client) {
        MSMessage *message = [MSMessage alloc];
        
        message.Subject = self.txtSubject.text;
        message.ToRecipients = [self getRecipients:self.txtTo.text];
        message.Body = [[MSItemBody alloc] init];
        message.Body.Content = self.txtBody.text;
        
        NSURLSessionDataTask* task = [[[client getMe] getOperations]sendMail:message :true :^(int returnValue, NSError *error) {
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"Message sent!" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            
            [alert show];
        }];
        
        [task resume];
    }];
}

-(NSMutableArray<MSRecipient>*)getRecipients : (NSString*)text{
    
    NSMutableArray<MSRecipient>* result = (NSMutableArray<MSRecipient>*)[NSMutableArray array];
    
    NSArray* recipients = [text componentsSeparatedByString:@","];
    
    for (NSString* r in recipients) {
        
        MSRecipient* recipient = [[MSRecipient alloc] init];
        recipient.EmailAddress = [MSEmailAddress alloc];
        recipient.EmailAddress.Address = [r stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        [result addObject: recipient];
    }
    return result;
}
@end
