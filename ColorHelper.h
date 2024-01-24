// https://stackoverflow.com/a/3532264
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define ROSEWATER 0
#define FLAMINGO 1
#define PINK 2
#define MAUVE 3
#define RED 4
#define MAROON 5
#define PEACH 6
#define YELLOW 7
#define GREEN 8
#define TEAL 9
#define SKY 10
#define SAPPHIRE 11
#define BLUE 12
#define LAVENDER 13

#define TEXT 14
#define SUBTEXT1 15
#define SUBTEXT0 16
#define OVERLAY2 17
#define OVERLAY1 18
#define OVERLAY0 19
#define SURFACE2 20
#define SURFACE1 21
#define SURFACE0 22
#define BASE 23
#define MANTLE 24
#define CRUST 25

static NSArray *colors;
static int ACCENT = BLUE;

@interface ColorHelper : NSObject { }
+ (void)latte;
+ (void)frappe;
+ (void)macchiato;
+ (void)mocha;

+ (void)updateColors;
@end

@implementation ColorHelper
+ (void)latte {
    colors = [[NSArray alloc] initWithObjects:
        UIColorFromRGB(0xdc8a78),
        UIColorFromRGB(0xdd7878),
        UIColorFromRGB(0xea76cb),
        UIColorFromRGB(0x8839ef),
        UIColorFromRGB(0xd20f39),
        UIColorFromRGB(0xe64553),
        UIColorFromRGB(0xfe640b),
        UIColorFromRGB(0xdf8e1d),
        UIColorFromRGB(0x40a02b),
        UIColorFromRGB(0x179299),
        UIColorFromRGB(0x04a5e5),
        UIColorFromRGB(0x209fb5),
        UIColorFromRGB(0x1e66f5),
        UIColorFromRGB(0x7287fd),
        UIColorFromRGB(0x4c4f69),
        UIColorFromRGB(0x5c5f77),
        UIColorFromRGB(0x6c6f85),
        UIColorFromRGB(0x7c7f93),
        UIColorFromRGB(0x8c8fa1),
        UIColorFromRGB(0x9ca0b0),
        UIColorFromRGB(0xacb0be),
        UIColorFromRGB(0xbcc0cc),
        UIColorFromRGB(0xccd0da),
        UIColorFromRGB(0xeff1f5),
        UIColorFromRGB(0xe6e9ef),
        UIColorFromRGB(0xdce0e8),
        nil];
}

+ (void)frappe {
    colors = [[NSArray alloc] initWithObjects:
        UIColorFromRGB(0xf2d5cf),
        UIColorFromRGB(0xeebebe),
        UIColorFromRGB(0xf4b8e4),
        UIColorFromRGB(0xca9ee6),
        UIColorFromRGB(0xe78284),
        UIColorFromRGB(0xea999c),
        UIColorFromRGB(0xef9f76),
        UIColorFromRGB(0xe5c890),
        UIColorFromRGB(0xa6d189),
        UIColorFromRGB(0x81c8be),
        UIColorFromRGB(0x99d1db),
        UIColorFromRGB(0x85c1dc),
        UIColorFromRGB(0x8caaee),
        UIColorFromRGB(0xbabbf1),
        UIColorFromRGB(0xc6d0f5),
        UIColorFromRGB(0xb5bfe2),
        UIColorFromRGB(0xa5adce),
        UIColorFromRGB(0x949cbb),
        UIColorFromRGB(0x838ba7),
        UIColorFromRGB(0x737994),
        UIColorFromRGB(0x626880),
        UIColorFromRGB(0x51576d),
        UIColorFromRGB(0x414559),
        UIColorFromRGB(0x303446),
        UIColorFromRGB(0x292c3c),
        UIColorFromRGB(0x232634),
        nil];
}

+ (void)macchiato {
    colors = [[NSArray alloc] initWithObjects:
        UIColorFromRGB(0xf4dbd6),
        UIColorFromRGB(0xf0c6c6),
        UIColorFromRGB(0xf5bde6),
        UIColorFromRGB(0xc6a0f6),
        UIColorFromRGB(0xed8796),
        UIColorFromRGB(0xee99a0),
        UIColorFromRGB(0xf5a97f),
        UIColorFromRGB(0xeed49f),
        UIColorFromRGB(0xa6da95),
        UIColorFromRGB(0x8bd5ca),
        UIColorFromRGB(0x91d7e3),
        UIColorFromRGB(0x7dc4e4),
        UIColorFromRGB(0x8aadf4),
        UIColorFromRGB(0xb7bdf8),
        UIColorFromRGB(0xcad3f5),
        UIColorFromRGB(0xb8c0e0),
        UIColorFromRGB(0xa5adcb),
        UIColorFromRGB(0x939ab7),
        UIColorFromRGB(0x8087a2),
        UIColorFromRGB(0x6e738d),
        UIColorFromRGB(0x5b6078),
        UIColorFromRGB(0x494d64),
        UIColorFromRGB(0x363a4f),
        UIColorFromRGB(0x24273a),
        UIColorFromRGB(0x1e2030),
        UIColorFromRGB(0x181926),
        nil];
}

+ (void)mocha {
    colors = [[NSArray alloc] initWithObjects:
        UIColorFromRGB(0xf5e0dc),
        UIColorFromRGB(0xf2cdcd),
        UIColorFromRGB(0xf5c2e7),
        UIColorFromRGB(0xcba6f7),
        UIColorFromRGB(0xf38ba8),
        UIColorFromRGB(0xeba0ac),
        UIColorFromRGB(0xfab387),
        UIColorFromRGB(0xf9e2af),
        UIColorFromRGB(0xa6e3a1),
        UIColorFromRGB(0x94e2d5),
        UIColorFromRGB(0x89dceb),
        UIColorFromRGB(0x74c7ec),
        UIColorFromRGB(0x89b4fa),
        UIColorFromRGB(0xb4befe),
        UIColorFromRGB(0xcdd6f4),
        UIColorFromRGB(0xbac2de),
        UIColorFromRGB(0xa6adc8),
        UIColorFromRGB(0x9399b2),
        UIColorFromRGB(0x7f849c),
        UIColorFromRGB(0x6c7086),
        UIColorFromRGB(0x585b70),
        UIColorFromRGB(0x45475a),
        UIColorFromRGB(0x313244),
        UIColorFromRGB(0x1e1e2e),
        UIColorFromRGB(0x181825),
        UIColorFromRGB(0x11111b),
        nil];
}

+ (void)updateColors {
    NSArray *flavors = [[NSArray alloc] initWithObjects:@"latte", @"frappe", @"macchiato", @"mocha", nil];
    NSArray *accents = [[NSArray alloc] initWithObjects:@"rosewater", @"flamingo", @"pink", @"mauve", @"red", @"maroon", @"peach", @"yellow", @"green", @"teal", @"sky", @"sapphire", @"blue", @"lavender", nil];

    switch ([flavors indexOfObject:Flavor]) {
        case 0:
            [self latte];
            break;
        case 1:
            [self frappe];
            break;
        case 2:
            [self macchiato];
            break;
        case 3:
            [self mocha];
            break;
        default:
            break;
    }

    ACCENT = (int)[accents indexOfObject:Accent];
}
@end
