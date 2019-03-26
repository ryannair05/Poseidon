// Enable home gestures
%hook BSPlatform
- (NSInteger)homeButtonType {
		return 2;
}
%end

// Hide home bar
%hook MTLumaDodgePillView
- (id)initWithFrame:(struct CGRect)arg1 {
	return NULL;
}
%end

// Hide Camera and Flashlight Button on Coversheet
%hook SBDashBoardQuickActionsViewController	
	-(BOOL)hasFlashlight{
		return NO;
		}
	-(BOOL)hasCamera{
		return NO;
}
%end

%hook _UIStatusBarVisualProvider_iOS
+ (Class)class {
    return NSClassFromString(@"_UIStatusBarVisualProvider_Split58");
}
%end

%hook UIStatusBar_Base
+ (Class)_implementationClass {
    return NSClassFromString(@"UIStatusBar_Modern");
}
+ (void)_setImplementationClass:(Class)arg1 {
    %orig(NSClassFromString(@"UIStatusBar_Modern"));
}
%end

//FUgap, credit to smokin1337
%hook CCUIHeaderPocketView
  //Hide Header Blur
  -(void)setBackgroundAlpha:(double)arg1{
      arg1 = 0.0;
      %orig;
  }
%end
