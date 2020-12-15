//
//  AppDelegate.m
//  objcwithoutstoryboard
//
//  Created by Ilgwon Ha on 12/15/20.
//

#import "AppDelegate.h"
#import "ViewController.h"
#include "config.h"

@interface AppDelegate ()
{
    NSWindow* window;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT) styleMask:NSWindowStyleMaskMiniaturizable|NSWindowStyleMaskClosable|NSWindowStyleMaskResizable|NSWindowStyleMaskTitled backing:NSBackingStoreBuffered defer:NO];
    [window setTitle:@"A random app"];
    [window setContentViewController:[[ViewController alloc] init]];
    [window makeKeyAndOrderFront:nil];
    
    CGFloat xPos = NSWidth([[window screen] frame])/2 - NSWidth([window frame])/2;
    CGFloat yPos = NSHeight([[window screen] frame])/2 - NSHeight([window frame])/2;
    [window setFrame:NSMakeRect(xPos, yPos, NSWidth([window frame]), NSHeight([window frame])) display:YES];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
