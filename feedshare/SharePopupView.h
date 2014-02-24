//
//  feedView.h
//  feedshare
//
//  Created by Ourangzaib khan on 2/21/14.
//  Copyright (c) 2014 Ourangzaib khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SharePopupView : UIView<MFMailComposeViewControllerDelegate,MFMessageComposeViewControllerDelegate,UINavigationControllerDelegate>
@property IBOutlet UIImageView *image;
-(IBAction)email:(id)sender;
-(IBAction)sms:(id)sender;
@property(nonatomic, assign) UIViewController *parentController;

@end
