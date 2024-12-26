#import <UIKit/UIViewController.h>

@interface SBIconController : UIViewController
-(void)todayViewControllerDidFocusSearchField:(id)arg1;
@end

%hook SBIconController
%new
-(void)todayViewControllerDidFocusSearchField:(id)arg1 {
	return;
}
%end