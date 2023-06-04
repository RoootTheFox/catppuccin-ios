#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <Foundation/NSUserDefaults+Private.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIColor.h>
#import <Tweak.h>

#include "colors.h"
#include "helper.h"

// https://stackoverflow.com/a/3532264
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// CHANGE COLORS HERE
//static int current_base = 0x1e1e2e;    // CTP base - systemBackgroundColor (background colors in general)
//static int current_mantle = 0x181825;  // CTP mantle - boxes and such
//static int current_text = 0xcdd6f4;        // CTP TEXT - labelColor
//static int current_blue = 0x89b4fa;       // CTP blue - system blue
//static int current_red = 0xf38ba8;         // CTP red - system red
//static int current_yellow = 0xf9e2af ;   // CTP yellow - system yellow + system dark yellow
//static int current_green = 0xa6e3a1 ;    // CTP green - system green
//static int current_peach = 0xfab387;  // CTP peach

//static int current_accent = 0x89b4fa;  // ACCENT COLOR

/* ########

{

    return %orig;
}

*/

%hook UIColor
/*+ (id)_systemChromeShadowColor {

        return UIColorFromRGB(ctest);

        return %orig;
    }
}*/

+ (id)blackColor {
    return %orig;
}

+ (id)blueColor {
    return %orig;
}

+ (id)brownColor {
    return %orig;
}
//+ (id)clearColor {
//
//    return %orig;
//}
+ (id)cyanColor {
    return %orig;
}
+ (id)darkGrayColor {
    return %orig;
}
+ (id)darkTextColor {
    return %orig;
}
+ (id)externalSystemGreenColor {
    return %orig;
}
+ (id)externalSystemRedColor {
    return %orig;
}
+ (id)externalSystemTealColor {
    return %orig;
}
+ (id)grayColor {
    return %orig;
}
+ (id)greenColor {
    return %orig;
}
+ (id)groupTableViewBackgroundColor { return UIColorFromRGB(current_base); }
+ (id)infoTextOverPinStripeTextColor {
    return %orig;
}
+ (id)insertionPointColor {
    return %orig;
}
+ (id)keyboardFocusIndicatorColor {
    return %orig;
}
+ (id)lightGrayColor {
    return %orig;
}
+ (id)lightTextColor {
    return %orig;
}
+ (id)linkColor {
    return %orig;
}
+ (id)magentaColor {
    return %orig;
}
+ (id)noContentDarkGradientBackgroundColor {
    return %orig;
}
+ (id)noContentLightGradientBackgroundColor {
    return %orig;
}
+ (id)opaqueSeparatorColor { //appears to be the color for vertical seperator lines
    return %orig;
}
+ (id)orangeColor {
    return %orig;
}
+ (id)pinStripeColor {
    return %orig;
}
+ (id)placeholderTextColor {
    return %orig;
}
+ (id)purpleColor {
    return %orig;
}
+ (id)quaternaryLabelColor {
    return %orig;
}
+ (id)quaternarySystemFillColor {
    return %orig;
}
+ (id)redColor {
    return %orig;
}
+ (id)scrollViewTexturedBackgroundColor {
    return %orig;
}
+ (id)secondaryLabelColor {
    return %orig;
}
+ (id)secondarySystemBackgroundColor { return UIColorFromRGB(current_base); }
+ (id)secondarySystemFillColor {
    return %orig;
}
+ (id)secondarySystemGroupedBackgroundColor {
    return %orig;
}
+ (id)sectionHeaderBackgroundColor {
    return %orig;
}
+ (id)sectionHeaderBorderColor {
    return %orig;
}
+ (id)sectionHeaderOpaqueBackgroundColor {
    return %orig;
}
+ (id)sectionListBorderColor {
    return %orig;
}
+ (id)selectionGrabberColor {
    return %orig;
}
+ (id)selectionHighlightColor {
    return %orig;
}
+ (id)separatorColor {
    return %orig;
}
+ (id)systemBlackColor {
    return %orig;
}
+ (id)systemBrownColor {
    return %orig;
}
+ (id)systemDarkBlueColor {
    return %orig;
}
+ (id)systemDarkExtraLightGrayColor {
    return %orig;
}
+ (id)systemDarkExtraLightGrayTintColor {
    return %orig;
}
+ (id)systemDarkGrayColor {
    return %orig;
}
+ (id)systemDarkGrayTintColor {
    return %orig;
}
+ (id)systemDarkGreenColor {
    return %orig;
}
+ (id)systemDarkLightGrayColor {
    return %orig;
}
+ (id)systemDarkLightGrayTintColor {
    return %orig;
}
+ (id)systemDarkLightMidGrayColor {
    return %orig;
}
+ (id)systemDarkLightMidGrayTintColor {
    return %orig;
}
+ (id)systemDarkMidGrayColor {
    return %orig;
}
+ (id)systemDarkMidGrayTintColor {
    return %orig;
}
+ (id)systemDarkOrangeColor {
    return %orig;
}
+ (id)systemDarkPinkColor {
    return %orig;
}
+ (id)systemDarkPurpleColor {
    return %orig;
}
+ (id)systemDarkRedColor {
    return %orig;
}
+ (id)systemDarkTealColor {
    return %orig;
}
+ (id)systemExtraLightGrayColor {
    return %orig;
}
+ (id)systemExtraLightGrayTintColor {
    return %orig;
}
+ (id)systemFillColor {
    return %orig;
}
+ (id)systemGray2Color {
    return %orig;
}
+ (id)systemGray3Color {
    return %orig;
}
+ (id)systemGray4Color {
    return %orig;
}
// seems to be the color that appears when you hold down a button (not released though)
+ (id)systemGray5Color {
    return %orig;
}
+ (id)systemGray6Color {
    return %orig;
}
+ (id)systemGrayColor {
    return %orig;
}
+ (id)systemGrayTintColor {
    return %orig;
}
+ (id)systemGroupedBackgroundColor { return UIColorFromRGB(current_base); }
+ (id)systemIndigoColor {
    return %orig;
}
+ (id)systemLightGrayColor {
    return %orig;
}
+ (id)systemLightGrayTintColor {
    return %orig;
}
+ (id)systemLightMidGrayColor {
    return %orig;
}
+ (id)systemLightMidGrayTintColor {
    return %orig;
}
+ (id)systemMidGrayColor {
    return %orig;
}
+ (id)systemMidGrayTintColor {
    return %orig;
}
+ (id)systemOrangeColor { return UIColorFromRGB(current_peach); }
+ (id)systemPinkColor {
    return %orig;
}
+ (id)systemPurpleColor {
    return %orig;
}
+ (id)systemTealColor {
    return %orig;
}
+ (id)systemWhiteColor { return UIColorFromRGB(current_base); }
// used in TrollStore for example
+ (id)tableBackgroundColor { return UIColorFromRGB(current_base); }
+ (id)tableCellBackgroundColor {
    return %orig;
}
+ (id)tableCellBlueTextColor {
    return %orig;
}
+ (id)tableCellDefaultSelectionTintColor {
    return %orig;
}
+ (id)tableCellDisabledBackgroundColor {
    return %orig;
}
+ (id)tableCellFocusedBackgroundColor {
    return %orig;
}
+ (id)tableCellGrayTextColor {
    return %orig;
}
+ (id)tableCellGroupedBackgroundColor { return UIColorFromRGB(current_mantle); }
+ (id)tableCellGroupedBackgroundColorLegacyWhite {
    return %orig;
}
+ (id)tableCellGroupedSelectedBackgroundColor {
    return %orig;
}
+ (id)tableCellHighlightedBackgroundColor {
    return %orig;
}
// used in trollstore (app list bg)
+ (id)tableCellPlainBackgroundColor { return UIColorFromRGB(current_base); }
+ (id)tableCellPlainSelectedBackgroundColor { return UIColorFromRGB(current_accent); }
+ (id)tableCellValue1BlueColor {
    return %orig;
}
+ (id)tableCellValue2BlueColor {
    return %orig;
}
+ (id)tableCellbackgroundColorCarPlay {
    return %orig;
}
+ (id)tableGroupedSeparatorLightColor {
    return %orig;
}
+ (id)tableGroupedTopShadowColor {
    return %orig;
}
+ (id)tablePlainHeaderFooterBackgroundColor {
    return %orig;
}
+ (id)tablePlainHeaderFooterFloatingBackgroundColor {
    return %orig;
}
+ (id)tableSelectionColor {
    return %orig;
}
+ (id)tableSelectionGradientEndColor {
    return %orig;
}
+ (id)tableSelectionGradientStartColor {
    return %orig;
}
+ (id)tableSeparatorColor {
    return %orig;
}
+ (id)tableSeparatorDarkColor {
    return %orig;
}//aa
+ (id)tableSeparatorLightColor {
    return %orig;
}
+ (id)tableShadowColor {
    return %orig;
}
+ (id)tertiaryLabelColor { //outlines for icons in settings app, might be more
    return %orig;
}
+ (id)tertiarySystemBackgroundColor { // note
    return %orig;
}
// seems to be textbox backgrounds, crust or mantle it is
+ (id)tertiarySystemFillColor { return UIColorFromRGB(current_mantle); }
+ (id)tertiarySystemGroupedBackgroundColor {
    return %orig;
}
+ (id)textFieldAtomBlueColor {
    return %orig;
}
+ (id)textFieldAtomPurpleColor {
    return %orig;
}
+ (id)underPageBackgroundColor {
    return %orig;
}
+ (id)viewFlipsideBackgroundColor {
    return %orig;
}
+ (id)whiteColor {
    return %orig;
}
+ (id)yellowColor {
    return %orig;
}
+ (id)pk_buttonImageColor {
    return %orig;
}
+ (id)pk_crosshairViewBorderColor {
    return %orig;
}
+ (id)pk_crosshairViewShadowColor {
    return %orig;
}
+ (id)pk_doneButtonBackgroundColor {
    return %orig;
}
+ (id)pk_doneButtonTitleColor {
    return %orig;
}
+ (id)pk_linedPaperLineColor_dark {
    return %orig;
}
+ (id)pk_linedPaperLineColor_light {
    return %orig;
}
+ (id)pk_paletteBackgroundColor {
    return %orig;
}
+ (id)pk_paletteButtonBackgroundColor {
    return %orig;
}
+ (id)pk_paletteShadowColor {
    return %orig;
}
+ (id)pk_paletteStrokeColor {
    return %orig;
}
+ (id)pk_removeActiveToolButtonColor {
    return %orig;
}
+ (id)pk_selectedPickerButtonBackgroundColor {
    return %orig;
}
+ (id)pk_selectedPickerButtonMaskColor {
    return %orig;
}
+ (id)pk_separatorLineColor {
    return %orig;
}
+ (id)pk_textInputDeletionPreviewColor {
    return %orig;
}
+ (id)pk_textInputReserveSpaceColor {
    return %orig;
}
+ (id)pk_toolDockMaskColor {
    return %orig;
}
+ (id)pk_toolSampleViewBackgroundColor {
    return %orig;
}
+ (id)pk_toolTintColor {
    return %orig;
}
+ (id)labelColor { return UIColorFromRGB(current_text); }
+ (id)systemBackgroundColor { return UIColorFromRGB(current_base); }
+ (id)systemBlueColor { return UIColorFromRGB(current_blue); }
+ (id)systemDarkYellowColor {
    return %orig;
}
+ (id)systemGreenColor { return UIColorFromRGB(current_green); }
+ (id)systemRedColor { return UIColorFromRGB(current_red); }
+ (id)systemYellowColor { return UIColorFromRGB(current_yellow); }
%end

static void loadPreferences() {
    NSLog(@"ctpios -- loadPreferences");
	NSUserDefaults *preferences = [[NSUserDefaults alloc] initWithSuiteName:@"com.catppuccin.ios.preferences"];
	if (preferences) {
        pref_flavor = [preferences objectForKey:@"flavor"];
        pref_accent = [preferences objectForKey:@"accent"];
    }

    NSLog(@"ctpios -- flavor %@ accent %@", pref_flavor, pref_accent);

    [Helper updateColors];
}

%ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPreferences, CFSTR("com.catppuccin.ios.preferences/reload"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPreferences();
}