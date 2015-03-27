//
//  ViewController.m
//  AnnotationsCustom
//
//  Created by ConorGlynn
//  Copyright (c). All rights reserved.
//

#import "ViewController.h"

#import "VBAnnotation.h"
#import "VBAnnotationView.h"

// Region
#define SPAN_VALUE 0.3f
#define MCR_LATITUDE 53.4722454
#define MCR_LONGITUDE -2.2235922
// A1 Taxis
#define A1_LATITUDE 53.4738292
#define A1_LONGITUDE -2.078204
// Street Cars Manchester
#define SCM_LATITUDE 53.477123
#define SCM_LONGITUDE -2.237074
// Union Cars
#define UC_LATITUDE 53.4722454
#define UC_LONGITUDE -2.2235922
// Quays Taxis
#define QT_LATITUDE 53.4717449
#define QT_LONGITUDE -2.2869674

@implementation ViewController
@synthesize mapView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self.mapView setDelegate:self];
    
    // define region
    MKCoordinateRegion region;
    region.center.latitude = MCR_LATITUDE;
    region.center.longitude = MCR_LONGITUDE;
    region.span.latitudeDelta = SPAN_VALUE;
    region.span.longitudeDelta = SPAN_VALUE;
    [self.mapView setRegion:region animated:NO];
    
    NSMutableArray *annotations = [[NSMutableArray alloc] init];
    CLLocationCoordinate2D location;
    VBAnnotation *ann;
    
    location.latitude = A1_LATITUDE;
    location.longitude = A1_LONGITUDE;
    ann = [[VBAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"A1 Taxis";
    ann.subtitle = @"0161 343 5050";
    ann.taxirank = @"yes";
    ann.name = @"A1 Taxis";
    [annotations addObject:ann];
    
    location.latitude = SCM_LATITUDE;
    location.longitude = SCM_LONGITUDE;
    ann = [[VBAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"Street Cars Manchester";
    ann.subtitle = @"0161 228 7878";
    ann.taxirank = @"yes";
    ann.name = @"Street Cars Manchester";
    [annotations addObject:ann];
    
    location.latitude = UC_LATITUDE;
    location.longitude = UC_LONGITUDE;
    ann = [[VBAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"Union Cars";
    ann.subtitle = @"0161 833 4141";
    ann.taxirank = @"yes";
    ann.name = @"Union Cars";
    [annotations addObject:ann];
    
    location.latitude = QT_LATITUDE;
    location.longitude = QT_LONGITUDE;
    ann = [[VBAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"Quays Taxi";
    ann.subtitle = @"0161 660 6666";
    ann.taxirank = @"yes";
    ann.name = @"Quays Taxi";
    [annotations addObject:ann];
    
    [self.mapView addAnnotations:annotations];
    [self.mapView setShowsUserLocation:YES];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    static NSString *identifier = @"pin";
    VBAnnotationView *view = (VBAnnotationView *)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (view == nil) {
        view = [[VBAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
    }
    return view;
}


@end









