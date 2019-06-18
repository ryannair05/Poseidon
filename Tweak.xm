%hook BSPlatform
- (NSInteger)homeButtonType {
    return 2;
}
%end

// Part of FUGap - stops the giltchy bluring effect from happening in the control center
%hook CCUIHeaderPocketView
-(void)setBackgroundAlpha:(double)arg1 {
    arg1 = 0.0;
    %orig;
}
%end

// All the hooks for the iPhone X statusbar.
%group StatusBarX

%hook UIStatusBar_Base
+ (Class)_implementationClass {
    return NSClassFromString(@"UIStatusBar_Modern");
}
+ (void)_setImplementationClass:(Class)arg1 {
    %orig(NSClassFromString(@"UIStatusBar_Modern"));
}
+ (Class)_statusBarImplementationClass {
	return NSClassFromString(@"UIStatusBar_Modern");
}
%end

@interface IGNavigationBar : UIView
@end

%hook IGNavigationBar
- (void)layoutSubviews {
    %orig;
    CGRect _frame = self.frame;
    _frame.origin.y = 20;
    self.frame = _frame;
}
%end

%hook UIStatusBarWindow
+ (void)setStatusBar:(Class)arg1 {
    %orig(NSClassFromString(@"UIStatusBar_Modern"));
}
%end

// Fix control center from crashing on iOS 12.
%hook _UIStatusBarVisualProvider_iOS
+ (Class)class {
    return NSClassFromString(@"_UIStatusBarVisualProvider_Split58");
}
%end

// Fix status bar in YouTube.
@interface YTHeaderContentComboView : UIView
- (UIView*)headerView;
@end

%hook YTHeaderContentComboView
- (void)layoutSubviews {
    %orig;
        CGRect headerViewFrame = [[self headerView] frame];
        headerViewFrame.origin.y += 20;
        [[self headerView] setFrame:headerViewFrame];
        [self setBackgroundColor:[[self headerView] backgroundColor]];
    }
%end
%end

%hook MTLumaDodgePillView
- (id)initWithFrame:(struct CGRect)arg1 {
	return NULL;
}
%end

%hook UIKeyboardImpl
+ (UIEdgeInsets)deviceSpecificPaddingForInterfaceOrientation:(long long)arg1 inputMode:(id)arg2 {
		UIEdgeInsets orig = %orig;
		(NSClassFromString(@"BarmojiCollectionView")) ? orig.bottom =  60 : orig.bottom = 40;
		return orig;
}
%end

%hook UIKeyboardDockView
- (CGRect)bounds {
		CGRect bounds = %orig;
		(NSClassFromString(@"BarmojiCollectionView")) ? bounds.size.height += 4 : bounds.size.height += 20;
		return bounds;
}
%end

// Enables PiP in video player.
%group PIP
extern "C" Boolean MGGetBoolAnswer(CFStringRef);
%hookf(Boolean, MGGetBoolAnswer, CFStringRef key) {
#define keyy(key_) CFEqual(key, CFSTR(key_))
    if (keyy("nVh/gwNpy7Jv1NOk00CMrw"))
        return YES;
    return %orig;
}
%end

%ctor {
    @autoreleasepool {
        %init(StatusBarX);
        %init(PIP);
        %init(_ungrouped);
	}
}