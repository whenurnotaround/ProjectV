//
//  PYShareVariable.h
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/27/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYBug.h"

@interface PYShareVariable : NSObject

+ (PYShareVariable *) instance;
- (id) init;
- (int) countBugFromYear:(NSString *)year;

@property (strong) NSMutableArray *bugReports;

@end


