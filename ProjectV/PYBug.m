//
//  PYBug.m
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/22/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import "PYBug.h"

@implementation PYBug

@synthesize bugID;
@synthesize file;
@synthesize version;
@synthesize fixedDate;
@synthesize reportedDate;
@synthesize committer;

- (void)initWithBugID:(NSString *)bugID fileName:(NSString*)filename version:(NSString *)version fixedDate:(NSDate *)fixedDate reportedDate:(NSDate *)reportedDate committer:(NSString *)committer {
    
}

@end
