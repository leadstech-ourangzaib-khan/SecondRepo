//
//  ViewController.h
//  feedshare
//
//  Created by Ourangzaib khan on 2/20/14.
//  Copyright (c) 2014 Ourangzaib khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController<MFMailComposeViewControllerDelegate,MFMessageComposeViewControllerDelegate,UINavigationControllerDelegate>
@property IBOutlet UIImageView *image;
-(IBAction)email:(id)sender;
-(IBAction)sms:(id)sender;
//@property (nonatomic, weak) IBOutlet UILabel *feedbackMsg;

@end
