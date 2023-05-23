#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <Foundation/NSUserDefaults+Private.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIColor.h>

// https://stackoverflow.com/a/3532264
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// CHANGE COLORS HERE
static int color_base = 0x1e1e2e;    // CTP base - systemBackgroundColor (background colors in general)
static int color_mantle = 0x181825;  // CTP mantle - boxes and such
static int color_text = 0xcdd6f4;        // CTP TEXT - labelColor
static int color_blue = 0x89b4fa;       // CTP blue - system blue
static int color_red = 0xf38ba8;         // CTP red - system red
static int color_yellow = 0xf9e2af ;   // CTP yellow - system yellow + system dark yellow
static int color_green = 0xa6e3a1 ;    // CTP green - system green
static int color_peach = 0xfab387;  // CTP peach

static int color_accent = 0x89b4fa;  // ACCENT COLOR
static int ctest = 0xff0000; // TEST COLOR

static NSString * nsDomainString = @"gay.rooot.ios.ctp";
static NSString * nsNotificationString = @"gay.rooot.ios.ctp/preferences.changed";
static BOOL enabled;

static void notificationCallback(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
	NSNumber * enabledValue = (NSNumber *)[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled" inDomain:nsDomainString];
	enabled = (enabledValue)? [enabledValue boolValue] : YES;
}

/* ########

{
    if (enabled) {
        return UIColorFromRGB(ctest);
    } else {
        return %orig;
    }
}

{
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}

*/

%hook UIColor
/*+ (id)_systemChromeShadowColor {
    if (enabled) {
        return UIColorFromRGB(ctest);
    } else {
        return %orig;
    }
}*/

+ (id)blackColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}

+ (id)blueColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}

+ (id)brownColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
//+ (id)clearColor {
//    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
//    return %orig;
//}
+ (id)cyanColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)darkGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)darkTextColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)externalSystemGreenColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)externalSystemRedColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)externalSystemTealColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)grayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)greenColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)groupTableViewBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}
+ (id)infoTextOverPinStripeTextColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)insertionPointColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)keyboardFocusIndicatorColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)lightGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)lightTextColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)linkColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)magentaColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)noContentDarkGradientBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)noContentLightGradientBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)opaqueSeparatorColor { //appears to be the color for vertical seperator lines
    NSLog(@"[ctp] (n) %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)orangeColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pinStripeColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)placeholderTextColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)purpleColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)quaternaryLabelColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)quaternarySystemFillColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)redColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)scrollViewTexturedBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)secondaryLabelColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
// onenote?
+ (id)secondarySystemBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}
+ (id)secondarySystemFillColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)secondarySystemGroupedBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)sectionHeaderBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)sectionHeaderBorderColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)sectionHeaderOpaqueBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)sectionListBorderColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)selectionGrabberColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)selectionHighlightColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)separatorColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemBlackColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemBrownColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkBlueColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkExtraLightGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkExtraLightGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkGreenColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkLightGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkLightGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkLightMidGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkLightMidGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkMidGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkMidGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkOrangeColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkPinkColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkPurpleColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkRedColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemDarkTealColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemExtraLightGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemExtraLightGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemFillColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemGray2Color {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemGray3Color {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemGray4Color {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
// seems to be the color that appears when you hold down a button (not released though)
+ (id)systemGray5Color {
    NSLog(@"[ctp] (n) %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemGray6Color {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}

+ (id)systemGroupedBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}
+ (id)systemIndigoColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemLightGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemLightGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemLightMidGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemLightMidGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemMidGrayColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemMidGrayTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemOrangeColor {
    if (enabled) {
        return UIColorFromRGB(color_peach);
    } else {
        return %orig;
    }
}
+ (id)systemPinkColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemPurpleColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemTealColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemWhiteColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
// used in TrollStore for example
+ (id)tableBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}
+ (id)tableCellBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellBlueTextColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellDefaultSelectionTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellDisabledBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellFocusedBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellGrayTextColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellGroupedBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_mantle);
    } else {
        return %orig;
    }
}
+ (id)tableCellGroupedBackgroundColorLegacyWhite {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellGroupedSelectedBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellHighlightedBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
// used in trollstore (app list bg)
+ (id)tableCellPlainBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}
+ (id)tableCellPlainSelectedBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_accent);
    } else {
        return %orig;
    }
}
+ (id)tableCellValue1BlueColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellValue2BlueColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableCellbackgroundColorCarPlay {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableGroupedSeparatorLightColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableGroupedTopShadowColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tablePlainHeaderFooterBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tablePlainHeaderFooterFloatingBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableSelectionColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableSelectionGradientEndColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableSelectionGradientStartColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableSeparatorColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableSeparatorDarkColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}//aa
+ (id)tableSeparatorLightColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tableShadowColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tertiaryLabelColor { //outlines for icons in settings app, might be more
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tertiarySystemBackgroundColor { // note
    NSLog(@"[ctp] (n) %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)tertiarySystemFillColor { // seems to be textbox backgrounds, crust or mantle it is
    if (enabled) {
        return UIColorFromRGB(color_mantle);
    } else {
        return %orig;
    }
}
+ (id)tertiarySystemGroupedBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)textFieldAtomBlueColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)textFieldAtomPurpleColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)underPageBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)viewFlipsideBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)whiteColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)yellowColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_buttonImageColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_crosshairViewBorderColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_crosshairViewShadowColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_doneButtonBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_doneButtonTitleColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_linedPaperLineColor_dark {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_linedPaperLineColor_light {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_paletteBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_paletteButtonBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_paletteShadowColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_paletteStrokeColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_removeActiveToolButtonColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_selectedPickerButtonBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_selectedPickerButtonMaskColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_separatorLineColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_textInputDeletionPreviewColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_textInputReserveSpaceColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_toolDockMaskColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_toolSampleViewBackgroundColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)pk_toolTintColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)labelColor {
    if (enabled) {
        return UIColorFromRGB(color_text);
    } else {
        return %orig;
    }
}
+ (id)systemBackgroundColor {
    if (enabled) {
        return UIColorFromRGB(color_base);
    } else {
        return %orig;
    }
}
+ (id)systemBlueColor {
    if (enabled) {
        return UIColorFromRGB(color_blue);
    } else {
        return %orig;
    }
}
+ (id)systemDarkYellowColor {
    NSLog(@"[ctp] %@", NSStringFromSelector(_cmd));
    return %orig;
}
+ (id)systemGreenColor {
    if (enabled) {
        return UIColorFromRGB(color_green);
    } else {
        return %orig;
    }
}
+ (id)systemRedColor {
    if (enabled) {
        return UIColorFromRGB(color_red);
    } else {
        return %orig;
    }
}
+ (id)systemYellowColor {
    if (enabled) {
        return UIColorFromRGB(color_yellow);
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
       NSLog(@"%d", ctest);
}
