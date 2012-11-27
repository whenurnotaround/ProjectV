//
//  PYCorePlotViewController.h
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/22/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CorePlot/CorePlot.h>
#import "PYShareVariable.h"



@interface PYCorePlotViewController : NSViewController <CPTPlotDataSource>{

    NSArray *plotData;
    NSArray *periodData;
    
}

@property (strong) PYShareVariable *shareVariable;
@property (nonatomic, strong) CPTGraphHostingView *hostView;
@property (nonatomic, strong) CPTTheme *selectedTheme;

-(void)initPlot;
-(void)configureHost;
-(void)configureGraph;
-(void)configurePlots;
-(void)configureAxes;

@end
