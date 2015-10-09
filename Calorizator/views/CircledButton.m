#import "CircledButton.h"


@implementation CircledButton {



}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.circledView.layer.cornerRadius = self.circledView.bounds.size.width / 2.0f;



}

@end