#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <Foundation/NSUserDefaults+Private.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIColor.h>

// https://stackoverflow.com/a/3532264
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// CHANGE COLORS HERE
static int color_base = 0x1e1e2e;    // CTP base - systemBackgroundColor + secondarySystemBackgroundColor
static int color_text = 0xcdd6f4;        // CTP TEXT - labelColor
static int color_blue = 0x94e2d5;       // CTP teal - system blue
static int color_red = 0xf38ba8;         // CTP red - system red
static int color_yellow = 0xf9e2af ;   // CTP yellow - system yellow + system dark yellow
static int color_green = 0xa6e3a1 ;    // CTP green - system green

static int ctest = 0xff0000; // TEST COLOR

static NSString * nsDomainString = @"gay.rooot.ios.ctp";
static NSString * nsNotificationString = @"gay.rooot.ios.ctp/preferences.changed";
static BOOL enabled;

static void notificationCallback(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
	NSNumber * enabledValue = (NSNumber *)[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled" inDomain:nsDomainString];
	enabled = (enabledValue)? [enabledValue boolValue] : YES;
}

/*

{
    if (enabled) {
        return UIColorFromRGB(ctest);
    } else {
        return %orig;
    }
}

*/

%hook UIColor

+(id)tableCellBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(ctest);
    } else {
        return %orig;
    }
}

// ex.: settings background color
+(id)groupTableViewBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}

// shown in settings > wallpaper
+(id)systemGroupedBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}

+(id)labelColor {
    if (enabled) {
        return UIColorFromRGB(color_text);
    } else {
        return %orig;
    }
}

+(id)systemBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}

+(id)secondarySystemBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}

+(id)systemBlueColor {
    if (enabled) {
        return UIColorFromRGB(color_blue);
    } else {
        return %orig;
    }
}

+(id)systemRedColor {
    if (enabled) {
        return UIColorFromRGB(color_red);
    } else {
        return %orig;
    }
}

+(id)systemYellowColor {
    if (enabled) {
        return UIColorFromRGB(color_yellow);
    } else {
        return %orig;
    }
}

+(id)systemDarkYellowColor {
    if (enabled) {
        return UIColorFromRGB(color_yellow);
    } else {
        return %orig;
    }
}

+(id)systemGreenColor {
    if (enabled) {
        return UIColorFromRGB(color_green);
    } else {
        return %orig;
    }
}

%end

%ctor {
	// Set variables on start up
	notificationCallback(NULL, NULL, NULL, NULL, NULL);

	// Register for 'PostNotification' notifications
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, notificationCallback, (CFStringRef)nsNotificationString, NULL, CFNotificationSuspensionBehaviorCoalesce);

	// Add any personal initializations

}
