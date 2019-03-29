#line 1 "Tweak.xm"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class _TFNCustomTabBar; @class CCUIHeaderPocketView; @class SBDashBoardQuickActionsViewController; @class MTLumaDodgePillView; @class BSPlatform; @class UIStatusBar_Base; @class _UIStatusBarVisualProvider_iOS; 
static NSInteger (*_logos_orig$_ungrouped$BSPlatform$homeButtonType)(_LOGOS_SELF_TYPE_NORMAL BSPlatform* _LOGOS_SELF_CONST, SEL); static NSInteger _logos_method$_ungrouped$BSPlatform$homeButtonType(_LOGOS_SELF_TYPE_NORMAL BSPlatform* _LOGOS_SELF_CONST, SEL); static MTLumaDodgePillView* (*_logos_orig$_ungrouped$MTLumaDodgePillView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT MTLumaDodgePillView*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static MTLumaDodgePillView* _logos_method$_ungrouped$MTLumaDodgePillView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTLumaDodgePillView*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static BOOL (*_logos_orig$_ungrouped$SBDashBoardQuickActionsViewController$hasFlashlight)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBDashBoardQuickActionsViewController$hasFlashlight(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBDashBoardQuickActionsViewController$hasCamera)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBDashBoardQuickActionsViewController$hasCamera(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST, SEL); static Class (*_logos_meta_orig$_ungrouped$_UIStatusBarVisualProvider_iOS$class)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static Class _logos_meta_method$_ungrouped$_UIStatusBarVisualProvider_iOS$class(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static Class (*_logos_meta_orig$_ungrouped$UIStatusBar_Base$_implementationClass)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static Class _logos_meta_method$_ungrouped$UIStatusBar_Base$_implementationClass(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_meta_orig$_ungrouped$UIStatusBar_Base$_setImplementationClass$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, Class); static void _logos_meta_method$_ungrouped$UIStatusBar_Base$_setImplementationClass$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, Class); static void (*_logos_orig$_ungrouped$CCUIHeaderPocketView$setBackgroundAlpha$)(_LOGOS_SELF_TYPE_NORMAL CCUIHeaderPocketView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$CCUIHeaderPocketView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL CCUIHeaderPocketView* _LOGOS_SELF_CONST, SEL, double); 

#line 2 "Tweak.xm"

static NSInteger _logos_method$_ungrouped$BSPlatform$homeButtonType(_LOGOS_SELF_TYPE_NORMAL BSPlatform* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
		return 2;
}




static MTLumaDodgePillView* _logos_method$_ungrouped$MTLumaDodgePillView$initWithFrame$(_LOGOS_SELF_TYPE_INIT MTLumaDodgePillView* __unused self, SEL __unused _cmd, struct CGRect arg1) _LOGOS_RETURN_RETAINED {
	return NULL;
}



	
	static BOOL _logos_method$_ungrouped$SBDashBoardQuickActionsViewController$hasFlashlight(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
		return NO;
		}
	static BOOL _logos_method$_ungrouped$SBDashBoardQuickActionsViewController$hasCamera(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
		return NO;
}



static Class _logos_meta_method$_ungrouped$_UIStatusBarVisualProvider_iOS$class(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NSClassFromString(@"_UIStatusBarVisualProvider_Split58");
}



static Class _logos_meta_method$_ungrouped$UIStatusBar_Base$_implementationClass(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NSClassFromString(@"UIStatusBar_Modern");
}
static void _logos_meta_method$_ungrouped$UIStatusBar_Base$_setImplementationClass$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, Class arg1) {
    _logos_meta_orig$_ungrouped$UIStatusBar_Base$_setImplementationClass$(self, _cmd, NSClassFromString(@"UIStatusBar_Modern"));
}



	 CGRect _frame = self.frame;
        _frame.origin.y -= 3.5;
 



  
  static void _logos_method$_ungrouped$CCUIHeaderPocketView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL CCUIHeaderPocketView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){
      arg1 = 0.0;
      _logos_orig$_ungrouped$CCUIHeaderPocketView$setBackgroundAlpha$(self, _cmd, arg1);
  }

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BSPlatform = objc_getClass("BSPlatform"); MSHookMessageEx(_logos_class$_ungrouped$BSPlatform, @selector(homeButtonType), (IMP)&_logos_method$_ungrouped$BSPlatform$homeButtonType, (IMP*)&_logos_orig$_ungrouped$BSPlatform$homeButtonType);Class _logos_class$_ungrouped$MTLumaDodgePillView = objc_getClass("MTLumaDodgePillView"); MSHookMessageEx(_logos_class$_ungrouped$MTLumaDodgePillView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$MTLumaDodgePillView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$MTLumaDodgePillView$initWithFrame$);Class _logos_class$_ungrouped$SBDashBoardQuickActionsViewController = objc_getClass("SBDashBoardQuickActionsViewController"); MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardQuickActionsViewController, @selector(hasFlashlight), (IMP)&_logos_method$_ungrouped$SBDashBoardQuickActionsViewController$hasFlashlight, (IMP*)&_logos_orig$_ungrouped$SBDashBoardQuickActionsViewController$hasFlashlight);MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardQuickActionsViewController, @selector(hasCamera), (IMP)&_logos_method$_ungrouped$SBDashBoardQuickActionsViewController$hasCamera, (IMP*)&_logos_orig$_ungrouped$SBDashBoardQuickActionsViewController$hasCamera);Class _logos_class$_ungrouped$_UIStatusBarVisualProvider_iOS = objc_getClass("_UIStatusBarVisualProvider_iOS"); Class _logos_metaclass$_ungrouped$_UIStatusBarVisualProvider_iOS = object_getClass(_logos_class$_ungrouped$_UIStatusBarVisualProvider_iOS); MSHookMessageEx(_logos_metaclass$_ungrouped$_UIStatusBarVisualProvider_iOS, @selector(class), (IMP)&_logos_meta_method$_ungrouped$_UIStatusBarVisualProvider_iOS$class, (IMP*)&_logos_meta_orig$_ungrouped$_UIStatusBarVisualProvider_iOS$class);Class _logos_class$_ungrouped$UIStatusBar_Base = objc_getClass("UIStatusBar_Base"); Class _logos_metaclass$_ungrouped$UIStatusBar_Base = object_getClass(_logos_class$_ungrouped$UIStatusBar_Base); MSHookMessageEx(_logos_metaclass$_ungrouped$UIStatusBar_Base, @selector(_implementationClass), (IMP)&_logos_meta_method$_ungrouped$UIStatusBar_Base$_implementationClass, (IMP*)&_logos_meta_orig$_ungrouped$UIStatusBar_Base$_implementationClass);MSHookMessageEx(_logos_metaclass$_ungrouped$UIStatusBar_Base, @selector(_setImplementationClass:), (IMP)&_logos_meta_method$_ungrouped$UIStatusBar_Base$_setImplementationClass$, (IMP*)&_logos_meta_orig$_ungrouped$UIStatusBar_Base$_setImplementationClass$);Class _logos_class$_ungrouped$CCUIHeaderPocketView = objc_getClass("CCUIHeaderPocketView"); MSHookMessageEx(_logos_class$_ungrouped$CCUIHeaderPocketView, @selector(setBackgroundAlpha:), (IMP)&_logos_method$_ungrouped$CCUIHeaderPocketView$setBackgroundAlpha$, (IMP*)&_logos_orig$_ungrouped$CCUIHeaderPocketView$setBackgroundAlpha$);} }
#line 53 "Tweak.xm"
