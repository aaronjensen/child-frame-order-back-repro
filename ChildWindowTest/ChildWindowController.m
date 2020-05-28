//
//  ChildWindowController.m
//  ChildWindowTest
//
//  Created by Aaron Jensen on 5/28/20.
//  Copyright © 2020 Aaron Jensen. All rights reserved.
//

#import "ChildWindowController.h"

@interface ChildWindowController ()

@end

@implementation ChildWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
}

- (IBAction)onClick:(id)sender {
    [self.window orderBack: NSApplication.sharedApplication];
}


@end
