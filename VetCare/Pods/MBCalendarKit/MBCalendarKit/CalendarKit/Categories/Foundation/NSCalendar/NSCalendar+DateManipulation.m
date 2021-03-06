//
//  NSCalendar+DateManipulation.m
//  MBCalendarKit
//
//  Created by Moshe Berman on 4/10/13.
//  Copyright (c) 2013 Moshe Berman. All rights reserved.
//

#import "NSCalendar+DateManipulation.h"

@implementation NSCalendar (DateManipulation)

#pragma mark - Add Units

- (NSDate *)dateByAddingSeconds:(NSUInteger)seconds toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.second = seconds;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingMinutes:(NSUInteger)minutes toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.minute = minutes;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingHours:(NSUInteger)hours toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.hour = hours;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingDays:(NSUInteger)days toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.day = days;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingWeeks:(NSUInteger)weeks toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.weekOfYear = weeks;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingMonths:(NSUInteger)months toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.month = months;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingYears:(NSUInteger)years toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.year = years;
    return [self dateByAddingComponents:c toDate:date options:0];
}

#pragma mark - Subtract Units

- (NSDate *)dateBySubtractingSeconds:(NSUInteger)seconds fromDate:(NSDate *)date
{
 
    NSDateComponents *c = [NSDateComponents new];
    c.second = -seconds;
    return [self dateByAddingComponents:c toDate:date options:0];
}
- (NSDate *)dateBySubtractingMinutes:(NSUInteger)minutes fromDate:(NSDate *)date;
{
    NSDateComponents *c = [NSDateComponents new];
    c.minute = -minutes;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingHours:(NSUInteger)hours fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.hour = -hours;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingDays:(NSUInteger)days fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.day = -days;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingWeeks:(NSUInteger)weeks fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.weekOfYear = -weeks;
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingMonths:(NSUInteger)months fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.month = -months;
    return [self dateByAddingComponents:c toDate:date options:0];
}


- (NSDate *)dateBySubtractingYears:(NSUInteger)years fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    c.year = -years;
    return [self dateByAddingComponents:c toDate:date options:0];
}


@end
