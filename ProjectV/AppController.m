//
//  AppController.m
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/22/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import "AppController.h"

@implementation AppController

@synthesize bugs = _bugs;

@synthesize mainView = _mainView;
@synthesize corePlotViewController = _corePlotViewController;

NSString *const kCorePlotView = @"PYCorePlotViewController";
NSString *const kBugReportFile = @"/Users/Papon/Documents/WorkSpace/IPA/Eclipse/eclipse_intro_app-1.csv";

- (void)awakeFromNib {
    
    [super awakeFromNib];
    self.corePlotViewController = [[PYCorePlotViewController alloc] initWithNibName:kCorePlotView bundle:nil];
    
    [_mainView addSubview:[_corePlotViewController view]];
    [[_corePlotViewController view] setFrame:[_mainView bounds]];
    
    [self LoadData];
    [self plotGraph];
}

- (void)LoadData {
    NSLog(@"Load Data");
    
    [self loadBugReports];
}

- (void)loadBugReports {
    NSLog(@"load bug report");
    
    NSString *fileString = [NSString stringWithContentsOfFile:kBugReportFile encoding:NSUTF8StringEncoding error:nil];
    _bugs = [fileString componentsSeparatedByString:@"\n"];
    
    NSLog(@"%ld bugs have loaded into the system.", _bugs.count);
}

- (void)plotGraph {
    
}

@end
