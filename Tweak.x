#import <Foundation/Foundation.h>
#import <Foundation/NSUserDefaults+Private.h>
#import <rootless.h>

#import <UIKit/UIKit.h>
#import <UIKit/UIColor.h>
#import <Tweak.h>

// ColorHelper is shamelessly stolen from Echo <3
#import "ColorHelper.h"

// include generated hooks file
%group SystemUI
@custom_include "generated.x"

%hook UIColor
+ (id)_systemBlueColor2 { return colors[ACCENT]; }
+ (id)_systemInteractionTintColor { return colors[ACCENT]; }
%end

%hook _UIVisualEffectBackdropView
-(void)setFilters:(NSArray *)arg1 {
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id object, NSDictionary *bindings) {
        return [[object filterType] isEqualToString:@"gaussianBlur"];
    }];
    NSArray *filtered = [arg1 filteredArrayUsingPredicate:predicate];
    self.backgroundColor = [colors[BASE] colorWithAlphaComponent:0.5];
    %orig(filtered);
}
%end
%end

static void loadPreferences() {
    BOOL isSystem = [NSHomeDirectory() isEqualToString:@"/var/mobile"];

    NSDictionary *preferences = nil;

    if (isSystem) {
        CFArrayRef keyList = CFPreferencesCopyKeyList((CFSTR("com.catppuccin.ios.preferences")), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        if (keyList) {
            preferences = CFBridgingRelease(CFPreferencesCopyMultiple(keyList, CFSTR("com.catppuccin.ios.preferences"), kCFPreferencesCurrentUser, kCFPreferencesAnyHost));
            if (!preferences) preferences = [NSDictionary new];
            CFRelease(keyList);
        }
    }

    if (!preferences) preferences = [NSDictionary dictionaryWithContentsOfFile:ROOT_PATH_NS(@"/var/mobile/Library/Preferences/com.catppuccin.ios.preferences.plist")];

    if (preferences) {
        Flavor = [preferences objectForKey:@"flavor"];
        Accent = [preferences objectForKey:@"accent"];
        //BOOL YouTube = [[preferences objectForKey:@"youtube"] boolValue];
        //BOOL Reddit = [[preferences objectForKey:@"reddit"] boolValue];
    }

    [ColorHelper updateColors];
}

%ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPreferences, CFSTR("com.catppuccin.ios.preferences/reload"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPreferences();

    %init(SystemUI);
}
