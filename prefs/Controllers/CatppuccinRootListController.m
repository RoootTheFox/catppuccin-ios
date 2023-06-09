#import "CatppuccinRootListController.h"

#import <FrontBoardServices/FBSSystemService.h>
#import <SpringBoardServices/SBSRelaunchAction.h>
#import <objc/runtime.h>

@implementation CatppuccinRootListController
- (NSArray *)specifiers {
    if (!_specifiers) {
        _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
    }
    return _specifiers;
}

- (instancetype)init {
    self = [super init];

    if (!self) return self;

    UIButton *respringButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [respringButton setTitle:@"Respring" forState:UIControlStateNormal];
    [respringButton setTitleColor:[UIColor systemBlueColor] forState:UIControlStateNormal];
    [respringButton addTarget:self action:@selector(respring:) forControlEvents:UIControlEventTouchUpInside];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:respringButton];

    return self;
}

- (void)respring:(UIButton *)sender {
    Class FBSSystemService = objc_getClass("FBSSystemService");
    Class SBSRelaunchAction = objc_getClass("SBSRelaunchAction");

    id restartAction = [SBSRelaunchAction actionWithReason:@"RestartRenderServer" options:4 targetURL:nil];
    [[FBSSystemService sharedService] sendActions:[NSSet setWithObject:restartAction] withResult:nil];
}
@end
