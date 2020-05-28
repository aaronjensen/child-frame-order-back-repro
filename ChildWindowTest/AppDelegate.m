//
//  AppDelegate.m
//  ChildWindowTest
//
//  Created by Aaron Jensen on 5/28/20.
//  Copyright © 2020 Aaron Jensen. All rights reserved.
//

#import "AppDelegate.h"
#import "ChildWindowController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSWindowController *childWindowController;
@end


@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.childWindowController = [[ChildWindowController alloc] initWithWindowNibName: @"ChildWindowController"];
    [self.window addChildWindow:self.childWindowController.window ordered:NSWindowAbove];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
