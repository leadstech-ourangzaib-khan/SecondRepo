//
//  feedView.m
//  feedshare
//
//  Created by Ourangzaib khan on 2/21/14.
//  Copyright (c) 2014 Ourangzaib khan. All rights reserved.
//

#import "SharePopupView.h"
#import "AppDelegate.h"
@implementation SharePopupView

@synthesize parentController;
@synthesize image=_image;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    UIImage *imagee = [UIImage imageNamed:@"Untitled-1.png"];
    
    //    const float colorMasking[6]={1,255,2,300,222,100};
    //    imagee = [UIImage imageWithCGImage: CGImageCreateWithMaskingColors(imagee.CGImage, colorMasking)];
    
    self.image.image=imagee;
    self.image.alpha=0.1;

 //   UIStoryboard *storyboard;
   // storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/



-(IBAction)email:(id)sender{
    
    [self displayMailComposerSheet];
}



- (void)displayMailComposerSheet
{
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    picker.mailComposeDelegate = self;
   
    
 //  picker.view.frame=CGRectMake(0, 0, 320, 568);
    //picker.view.bounds=self.bounds;
  //  [self addSubview:picker.view];
    AppDelegate *appDelegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    UIWindow *window = [appDelegate window];

    [window.rootViewController presentViewController:picker animated:YES completion:nil];
//    [picker.view bringSubviewToFront:window];
    
    //picker.view.frame.origin=self.frame.origin;
   // [self setHidden:YES];
//    [[UIApplication ] presentViewController:picker animated:YES completion:NULL];
}





- (void)mailComposeController:(MFMailComposeViewController*)controller
didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    
    [controller dismissViewControllerAnimated:YES completion:nil];
    // [controller.view.superview removeFromSuperview];
    
}


- (void)displaySMSComposerSheet
{
    MFMessageComposeViewController *picker = [[MFMessageComposeViewController alloc] init];
    picker.messageComposeDelegate = self;
    
    // You can specify one or more preconfigured recipients.  The user has
    // the option to remove or add recipients from the message composer view
    // controller.
    /* picker.recipients = @[@"Phone number here"]; */
    
    // You can specify the initial message text that will appear in the message
    // composer view controller.
    picker.body = @"Hello from California!";
    AppDelegate *appDelegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    UIWindow *window = [appDelegate window];
    
    [window.rootViewController presentViewController:picker animated:YES completion:nil];
    [window.rootViewController presentViewController:picker animated:YES completion:NULL];
}


-(IBAction)sms:(id)sender{
    // You must check that the current device can send SMS messages before you
    // attempt to create an instance of MFMessageComposeViewController.  If the
    // device can not send SMS messages,
    // [[MFMessageComposeViewController alloc] init] will return nil.  Your app
    // will crash when it calls -presentViewController:animated:completion: with
    // a nil view controller.
    if ([MFMessageComposeViewController canSendText])
        // The device can send email.
    {
        [self displaySMSComposerSheet];
    }
    else
        // The device can not send email.
    {
        return;
        //   self.feedbackMsg.hidden = NO;
        // self.feedbackMsg.text = @"Device not configured to send SMS.";
    }
    
}



- (void)messageComposeViewController:(MFMessageComposeViewController *)controller
                 didFinishWithResult:(MessageComposeResult)result
{
    [controller dismissViewControllerAnimated:YES completion:NULL];
}


@end
