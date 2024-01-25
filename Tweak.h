static NSString *Flavor = @"mocha";
static NSString *Accent = @"mauve";

@interface _UIVisualEffectFilterEntry : NSObject {
    NSString *_filterType;
}
@property(nonatomic, copy) NSString *filterType;
@end
@interface _UIVisualEffectSubview : UIView
@end
@interface _UIVisualEffectBackdropView : _UIVisualEffectSubview
@end