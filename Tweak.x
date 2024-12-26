#import <UIKit/UIViewController.h>

@interface SBIconController : UIViewController
+(id)sharedInstance;
-(void)todayViewControllerDidFocusSearchField:(id)arg1;
-(void)handleSpotlightPresentationFromViewController:(id)arg1;

@end

%hook SBIconController
%new
-(void)todayViewControllerDidFocusSearchField:(id)arg1 {
	[[%c(SBIconController) sharedInstance] handleSpotlightPresentationFromViewController:arg1];
}
%end