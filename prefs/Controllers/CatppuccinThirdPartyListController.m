#import "CatppuccinThirdPartyListController.h"

@implementation CatppuccinThirdPartyListController
- (NSArray *)specifiers {
    if (!_specifiers) {
        _specifiers = [self loadSpecifiersFromPlistName:@"ThirdParty" target:self];
    }
    return _specifiers;
}
@end
