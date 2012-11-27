//
//  PYShareVariable.m
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/27/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import "PYShareVariable.h"

static PYShareVariable *_shareVariable = nil;

@implementation PYShareVariable
@synthesize bugReports = _bugReports;

- (id) init {
    
    if (self = [super init]) {
        _bugReports = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (PYShareVariable *) instance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareVariable = [[self alloc] init];
    });
    return _shareVariable;
}

- (int) countBugFromYear:(NSString *)year {
    int count = 0;
    for (PYBug *bug in _bugReports) {
        if (bug.reportedDate.year == [year integerValue]) {
            count += 1;
        }
    }
    NSLog(@"%@ = %d", year, count);
    return (count * 10) / _bugReports.count;
}


@end
