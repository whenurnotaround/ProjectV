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
@property (retain) NSString *fileName;
@property (retain) NSString *version;
@property (retain) NSDateComponents *fixedDate;
@property (retain) NSDateComponents *reportedDate;
@property (retain) NSString *committer;

- (id)initWithBugID:(NSString *)bugID fileName:(NSString*)filename version:(NSString *)version fixedDate:(NSString *)fixedDate reportedDate:(NSString *)reportedDate committer:(NSString *)committer;
@end
