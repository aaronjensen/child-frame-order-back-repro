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

- (IBAction)onClickLower:(id)sender {
    NSWindow *parent = self.window.parentWindow;
    [parent removeChildWindow:self.window];
    
    NSArray<__kindof NSWindow *> *childWindows = parent.childWindows;

    // [self.window orderBack: NSApplication.sharedApplication];
    [parent addChildWindow:self.window ordered:NSWindowAbove];
    
    for (int i = 0; i < [childWindows count]; ++i) {
        NSWindow *child = childWindows[i];
        [parent removeChildWindow: child];
        [parent addChildWindow: child ordered: NSWindowAbove];
    }
}

- (IBAction)onClickRaise: (id)sender {
    NSWindow *parent = self.window.parentWindow;
    [parent removeChildWindow:self.window];
    
    NSArray<__kindof NSWindow *> *childWindows = parent.childWindows;

//     [self.window orderBack: NSApplication.sharedApplication];
    [parent addChildWindow:self.window ordered:NSWindowAbove];
}


@end
