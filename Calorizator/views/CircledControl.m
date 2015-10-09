#import "CircledControl.h"
#import "CircledButton.h"

@interface CircledControl ()
@property(nonatomic, strong) CircledButton *circleButton;
@end

@implementation CircledControl

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self buildViewHierarchy];
    }
    return self;
}



-(void)buildViewHierarchy{
    
    self.circleButton = [self loadButtonFromNib ];
    self.circleButton.translatesAutoresizingMaskIntoConstraints = false;

    [self addSubview:self.circleButton];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.circleButton
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                     toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                     multiplier:1 constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.circleButton
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                     toItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                     multiplier:1 constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.circleButton
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                     toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                     multiplier:1 constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.circleButton
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                     toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                     multiplier:1 constant:0]];

};

-(CircledButton *) loadButtonFromNib{

    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    UINib *nib = [UINib nibWithNibName:@"CircledButton" bundle:bundle];
    CircledButton *result = (CircledButton*) [nib instantiateWithOwner:self options:nil].firstObject;
    return result;
}


-(void)prepareForInterfaceBuilder {
    [self buildViewHierarchy];
}



- (UIColor *)color {
    return  self.circleButton.circledView.backgroundColor;
}

- (void)setColor:(UIColor *)color {
    self.circleButton.circledView.backgroundColor = color;

}



- (NSString *)title {
    return self.circleButton.titleLabel.text;
}

- (void)setTitle:(NSString *)title {
   self.circleButton.titleLabel.text = title;
}



- (UIImage *)image {
    return self.circleButton.imageView.image;
}

- (void)setImage:(UIImage *)image {
    self.circleButton.imageView.image = image;
}


@end
