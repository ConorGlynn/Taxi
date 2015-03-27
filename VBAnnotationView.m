//
//  VBAnnotationView.m
//  Annotations
//
//  Created by ConorGlynn
//  Copyright (c). All rights reserved.
//

#import "VBAnnotationView.h"
#import "VBAnnotation.h"

@implementation VBAnnotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    
    // Get a referene to the annotation to get its state value
    VBAnnotation *myAnnotation = (VBAnnotation *)annotation;
    
    NSString *myImage;
    if ([myAnnotation.taxirank isEqualToString:@"yes"]) {
         myImage = @"taxi.png";
    }
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:myImage]];
    self.leftCalloutAccessoryView = imageView;
    self.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
   
    if ([myAnnotation.name isEqualToString:@"A1 Taxis"]) {
        self.image = [UIImage imageNamed:@"taxi.png"];
        
    } else if ([myAnnotation.name isEqualToString:@"Street Cars Manchester"]) {
        self.image = [UIImage imageNamed:@"taxi.png"];
        
    } else if ([myAnnotation.name isEqualToString:@"Union Cars"]) {
        self.image = [UIImage imageNamed:@"taxi.png"];
        
    } else if ([myAnnotation.name isEqualToString:@"Quays Taxi"]) {
        self.image = [UIImage imageNamed:@"taxi.png"];
    }


    self.enabled = YES;
    self.canShowCallout = YES;
    
    return self;
}

-(IBAction)callPhone:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://01613677116"]];
}

@end