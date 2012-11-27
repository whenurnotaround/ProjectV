//
//  AppController.h
//  ProjectV
//
//  Created by Yongpisanpop Papon on 11/22/12.
//  Copyright (c) 2012 NAIST. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYCorePlotViewController.h"
#import "PYBug.h"
#import "PYShareVariable.h"

@interface AppController : NSObject {
    
}

@property (strong) PYShareVariable *shareVariable;
@property (weak) IBOutlet NSView *mainView;
@property (strong) NSViewController *corePlotViewController;

-(void)LoadData;

@end
