//
//  RacineConstants.h
//  TheBussingApp
//
//  Created by Kyle Zawacki on 8/4/15.
//  Copyright (c) 2015 App Factory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WesternKenoshaConstants : NSObject

+ (NSString*)getTextForIndex:(int)index;
+ (UIColor*)getRouteColorForRouteNumber:(int)number;
+ (int)getRouteNumberFromArrayIndex:(int)index;
+ (UIColor*)getAppTintColor;
+ (UIColor*)getBackgroundColor;
+ (NSArray*)getScheduleBeginEndTimes;
+ (NSArray*)getAvailableDays;
+ (NSString*)getRouteCoordinatesFileName;
+ (NSArray*)getListOfRouteNumbers;

@end