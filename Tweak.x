#import <UIKit/UIKit.h>
#import <UIKit/UIColor.h>
#import <Tweak.h>

// ColorHelper is shamelessly stolen from Echo <3
#import "ColorHelper.h"

// include generated hooks file
@custom_include "generated.x"

%ctor {
	[ColorHelper updateColors];
}
