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

//FUgap, credit to smokin1337
%hook CCUIScrollView
-(void)setContentInset:(UIEdgeInsets)arg1 {
     arg1 = UIEdgeInsetsMake(65,0,0,0);
     %orig;
  }
%end

%hook CCUIHeaderPocketView
-(void)setBackgroundAlpha:(double)arg1 {
    arg1 = 0.0;
    %orig;
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

%hook UIKeyboardImpl
+ (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(long long)arg1 inputMode:(id)arg2 {
		UIEdgeInsets orig = %orig;
                if (NSClassFromString(@"BarmojiCollectionView")) {
                orig.bottom = 60;
		} else {
		orig.bottom =  40;
		}		
		return orig;
}
%end

%hook UIKeyboardDockView
- (CGRect)bounds {
		CGRect bounds = %orig;
		 if (NSClassFromString(@"BarmojiCollectionView")) {
		bounds.size.height += 4;
		} else {
		bounds.size.height += 20;
		}
		return bounds;
}
%end


