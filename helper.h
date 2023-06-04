#import <Foundation/Foundation.h>
#import "Tweak.h"

#ifdef AUTOMATIC_THEME_SWITCHING_BROKEN_INCREMENTAL_BUILDS
    #import "headers/UISUserInterfaceStyleMode.h"
    // what the fuck. https://github.com/xybp888/iOS-SDKs/issues/3#issuecomment-637572290
    int __isOSVersionAtLeast(int major, int minor, int patch) { NSOperatingSystemVersion version; version.majorVersion = major; version.minorVersion = minor; version.patchVersion = patch; return [[NSProcessInfo processInfo] isOperatingSystemAtLeastVersion:version]; }
#endif

@interface Helper : NSObject {}

+ (NSArray *)flavors;
+ (NSArray *)accents;
+ (void) updateColors; // call this **AFTER** loading/changing preferences

@end

@implementation Helper

// https://stackoverflow.com/a/2784275
+ (NSArray *)flavors {
    static NSArray *_flavors;

    if (_flavors == nil) {
        _flavors = [[NSArray alloc] initWithObjects:@"latte", @"frappe", @"macchiato", @"mocha", nil];
    }

    return _flavors;
}

+ (NSArray *)accents {
    static NSArray *_accents;

    if (_accents == nil) {
        _accents = [[NSArray alloc] initWithObjects:
        @"rosewater",
        @"flamingo",
        @"pink",
        @"mauve",
        @"red",
        @"maroon",
        @"peach",
        @"yellow",
        @"green",
        @"teal",
        @"sky",
        @"sapphire",
        @"blue",
        @"lavender",
        nil];
    }

    return _accents;
}

+(void) updateColors {
    NSLog(@"ctpios -- updateColors");

    int flavor_index = [[Helper flavors] indexOfObject:pref_flavor];
    int accent_index = [[Helper accents] indexOfObject:pref_accent];

    // static NSString *pref_accent = @"blue";
    // static NSString *pref_flavor = @"mocha";

    switch (flavor_index) {
        case 0: // latte
            NSLog(@"ctpios -- updateColors switch LATTE");
            current_rosewater = latte_rosewater;
            current_flamingo  = latte_flamingo;
            current_pink      = latte_pink;
            current_mauve     = latte_mauve;
            current_red       = latte_red;
            current_maroon    = latte_maroon;
            current_peach     = latte_peach;
            current_yellow    = latte_yellow;
            current_green     = latte_green;
            current_teal      = latte_teal;
            current_sky       = latte_sky;
            current_sapphire  = latte_sapphire;
            current_blue      = latte_blue;
            current_lavender  = latte_lavender;
            
            current_text      = latte_text;
            current_subtext1  = latte_subtext1;
            current_subtext0  = latte_subtext0;
            current_overlay2  = latte_overlay2;
            current_overlay1  = latte_overlay1;
            current_overlay0  = latte_overlay0;
            current_surface2  = latte_surface2;
            current_surface1  = latte_surface1;
            current_surface0  = latte_surface0;
            current_base      = latte_base;
            current_mantle    = latte_mantle;
            current_crust     = latte_crust;
            break;
        case 1: // frappe
            NSLog(@"ctpios -- updateColors switch FRAPPE");
            current_rosewater = frappe_rosewater;
            current_flamingo  = frappe_flamingo;
            current_pink      = frappe_pink;
            current_mauve     = frappe_mauve;
            current_red       = frappe_red;
            current_maroon    = frappe_maroon;
            current_peach     = frappe_peach;
            current_yellow    = frappe_yellow;
            current_green     = frappe_green;
            current_teal      = frappe_teal;
            current_sky       = frappe_sky;
            current_sapphire  = frappe_sapphire;
            current_blue      = frappe_blue;
            current_lavender  = frappe_lavender;
            
            current_text      = frappe_text;
            current_subtext1  = frappe_subtext1;
            current_subtext0  = frappe_subtext0;
            current_overlay2  = frappe_overlay2;
            current_overlay1  = frappe_overlay1;
            current_overlay0  = frappe_overlay0;
            current_surface2  = frappe_surface2;
            current_surface1  = frappe_surface1;
            current_surface0  = frappe_surface0;
            current_base      = frappe_base;
            current_mantle    = frappe_mantle;
            current_crust     = frappe_crust;
            break;
        case 2: // macchiato
            NSLog(@"ctpios -- updateColors switch MACCHIATO");
            current_rosewater = macchiato_rosewater;
            current_flamingo  = macchiato_flamingo;
            current_pink      = macchiato_pink;
            current_mauve     = macchiato_mauve;
            current_red       = macchiato_red;
            current_maroon    = macchiato_maroon;
            current_peach     = macchiato_peach;
            current_yellow    = macchiato_yellow;
            current_green     = macchiato_green;
            current_teal      = macchiato_teal;
            current_sky       = macchiato_sky;
            current_sapphire  = macchiato_sapphire;
            current_blue      = macchiato_blue;
            current_lavender  = macchiato_lavender;
            
            current_text      = macchiato_text;
            current_subtext1  = macchiato_subtext1;
            current_subtext0  = macchiato_subtext0;
            current_overlay2  = macchiato_overlay2;
            current_overlay1  = macchiato_overlay1;
            current_overlay0  = macchiato_overlay0;
            current_surface2  = macchiato_surface2;
            current_surface1  = macchiato_surface1;
            current_surface0  = macchiato_surface0;
            current_base      = macchiato_base;
            current_mantle    = macchiato_mantle;
            current_crust     = macchiato_crust;
            break;
        case 3: // mocha
            NSLog(@"ctpios -- updateColors switch MOCHA");
            current_rosewater = mocha_rosewater;
            current_flamingo  = mocha_flamingo;
            current_pink      = mocha_pink;
            current_mauve     = mocha_mauve;
            current_red       = mocha_red;
            current_maroon    = mocha_maroon;
            current_peach     = mocha_peach;
            current_yellow    = mocha_yellow;
            current_green     = mocha_green;
            current_teal      = mocha_teal;
            current_sky       = mocha_sky;
            current_sapphire  = mocha_sapphire;
            current_blue      = mocha_blue;
            current_lavender  = mocha_lavender;
            
            current_text      = mocha_text;
            current_subtext1  = mocha_subtext1;
            current_subtext0  = mocha_subtext0;
            current_overlay2  = mocha_overlay2;
            current_overlay1  = mocha_overlay1;
            current_overlay0  = mocha_overlay0;
            current_surface2  = mocha_surface2;
            current_surface1  = mocha_surface1;
            current_surface0  = mocha_surface0;
            current_base      = mocha_base;
            current_mantle    = mocha_mantle;
            current_crust     = mocha_crust;
            break;
    }

    switch (accent_index) {
        case 0: // rosewater
            current_accent = current_rosewater;
            break;
        case 1: // flamingo
            current_accent = current_flamingo;
            break;
        case 2: // pink
            current_accent = current_pink;
            break;
        case 3: // mauve
            current_accent = current_mauve;
            break;
        case 4: // red
            current_accent = current_red;
            break;
        case 5: // maroon
            current_accent = current_maroon;
            break;
        case 6: // peach
            current_accent = current_peach;
            break;
        case 7: // yellow
            current_accent = current_yellow;
            break;
        case 8: // green
            current_accent = current_green;
            break;
        case 9: // teal
            current_accent = current_teal;
            break;
        case 10: // sky
            current_accent = current_sky;
            break;
        case 11: // sapphire
            current_accent = current_sapphire;
            break;
        case 12: // blue
            current_accent = current_blue;
            break;
        case 13: // lavender
            current_accent = current_lavender;
            break;
    }

    #ifdef AUTOMATIC_THEME_SWITCHING_BROKEN_INCREMENTAL_BUILDS
        if (@available(iOS 13, *)) {
            UISUserInterfaceStyleMode *systemStyleMode = [[UISUserInterfaceStyleMode alloc] init];

            if ([[[NSProcessInfo processInfo] processName] isEqualToString:@"Preferences"]) {
                NSLog(@"ctpios -- updateColors processName: SpringBoard");

                // if latte
                if (flavor_index == 0) {
                    NSLog(@"ctpios -- updateColors LATTE -- set light theme");

                    //NSLog(@"ctpios -- idk LMAO %@", [UITraitCollection currentTraitCollection]);
                    systemStyleMode.modeValue = 1;
                    //[[[UISUserInterfaceStyleMode alloc] init] setModeValue:2];
                } else {
                    NSLog(@"ctpios -- updateColors NOT LATTE -- set dark theme");
                    systemStyleMode.modeValue = 2;
                }
            }
        }
    #endif
}

@end