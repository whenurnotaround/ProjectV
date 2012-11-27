//
//  AppController.m
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/22/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import "AppController.h"

@implementation AppController

@synthesize shareVariable = _shareVariable;
@synthesize mainView = _mainView;
@synthesize corePlotViewController = _corePlotViewController;

NSString *const kCorePlotView = @"PYCorePlotViewController";
NSString *const kBugReportFile = @"/Users/Papon/Documents/WorkSpace/IPA/Eclipse/eclipse_intro_app-1.csv";

- (void)awakeFromNib {
    
    // get share instance
    _shareVariable = [PYShareVariable instance];
    
    [self LoadData];
    
    [super awakeFromNib];
    self.corePlotViewController = [[PYCorePlotViewController alloc] initWithNibName:kCorePlotView bundle:nil];
    
    [_mainView addSubview:[_corePlotViewController view]];
    [[_corePlotViewController view] setFrame:[_mainView bounds]];
    
    
    [self plotGraph];
}

- (void)LoadData {
    NSLog(@"Load Data");
    
    [self loadBugReports];
}

- (void)loadBugReports {
    NSLog(@"load bug report");
    
    NSString *fileString = [NSString stringWithContentsOfFile:kBugReportFile encoding:NSUTF8StringEncoding error:nil];
    
    NSArray *bugs = [fileString componentsSeparatedByString:@"\n"];
    
    for(NSString *myStr in bugs) {
        NSArray *bugDesc = [myStr componentsSeparatedByString:@","];
        PYBug *bug = [[PYBug alloc] initWithBugID:[bugDesc objectAtIndex:3] fileName:[bugDesc objectAtIndex:0] version:[bugDesc objectAtIndex:1] fixedDate:[bugDesc objectAtIndex:2] reportedDate:[bugDesc objectAtIndex:6] committer:[bugDesc objectAtIndex:9]];
        
        [_shareVariable.bugReports addObject:bug];
    }
    
    
}

- (void)plotGraph {
    
}

@end
