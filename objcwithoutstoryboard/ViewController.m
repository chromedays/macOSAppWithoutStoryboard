//
//  ViewController.m
//  objcwithoutstoryboard
//
//  Created by Ilgwon Ha on 12/15/20.
//

#import "ViewController.h"
#include "config.h"

@interface ViewController ()
{
    NSView* redBox;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    redBox = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 100, 100)];
    [self.view addSubview:redBox];
    [redBox setWantsLayer:YES];
    [[redBox layer] setBackgroundColor:[[NSColor redColor] CGColor]];
//[[NSScreen mainScreen] frame].size
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)loadView {
    self.view = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)];
}

@end
