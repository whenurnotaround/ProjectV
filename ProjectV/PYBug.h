//
//  PYBug.h
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/22/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PYBug : NSObject

@property (retain) NSString *bugID;
@property (retain) NSString *file;
@property (retain) NSString *version;
@property (retain) NSDate *fixedDate;
@property (retain) NSDate *reportedDate;
@property (retain) NSString *committer;

@end
