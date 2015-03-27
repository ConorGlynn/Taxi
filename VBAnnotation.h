//
//  VBAnnotation.h
//  Annotation
//
//  Created by ConorGlynn
//  Copyright (c). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface VBAnnotation : NSObject <MKAnnotation>

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, copy) NSString *taxirank;
@property (nonatomic, copy) NSString *name;

- initWithPosition:(CLLocationCoordinate2D)coords;

@end