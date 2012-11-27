//
//  PYBug.m
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/22/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import "PYBug.h"

@implementation PYBug

@synthesize bugID = _bugID;
@synthesize fileName = _fileName;
@synthesize version = _version;
@synthesize fixedDate = _fixedDate;
@synthesize reportedDate = _reportedDate;
@synthesize committer = _committer;

- (id)initWithBugID:(NSString *)bugID fileName:(NSString*)filename version:(NSString *)version fixedDate:(NSString *)fixedDate reportedDate:(NSString *)reportedDate committer:(NSString *)committer {
    
    self = [super init];
    
    if (self) {
        _bugID = bugID;
        _fileName = filename;
        _version = version;
        _fixedDate = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:[self convertStringToDate:fixedDate]];
        _reportedDate = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:[self convertStringToDate:reportedDate]];
        _committer = committer;
        
       
    }
    
    return self;
}

- (NSDate *)convertStringToDate:(NSString *)dateStr {
    
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyymmdd"];
    
    return [df dateFromString:dateStr];
}

@end
