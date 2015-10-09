#import <UIKit/UIKit.h>

@class CircledButton;

IB_DESIGNABLE @interface CircledControl : UIView

@property (nonatomic, strong) IBInspectable UIColor *color;
@property (nonatomic, strong) IBInspectable NSString *title;
@property (nonatomic, strong) IBInspectable UIImage *image;



@end
