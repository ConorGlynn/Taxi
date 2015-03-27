//
//  VBAnnotation.m
//  Annotation
//
//  Created by ConorGlynn
//  Copyright (c). All rights reserved.
//

#import "VBAnnotation.h"

@implementation VBAnnotation

@synthesize coordinate;
@synthesize title;
@synthesize subtitle;
@synthesize taxirank;
@synthesize name;

- initWithPosition:(CLLocationCoordinate2D)coords {
    if (self = [super init]) {
        self.coordinate = coords;
    }
    return self;
}

@end