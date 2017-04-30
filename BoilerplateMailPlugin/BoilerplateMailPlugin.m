//
//  BoilerplateMailPlugin.m
//  BoilerplateMailPlugin
//
//  Created by Andrew Fischer on 4/30/17.
//  Copyright © 2017 Andrew Fischer. All rights reserved.
//

#import "BoilerplateMailPlugin.h"
#import <AppKit/AppKit.h>

@interface BoilerplateMailPlugin (SMPNoImplementation)
+ (void)registerBundle;
@end

@implementation BoilerplateMailPlugin

+ (void)initialize {
    Class mvMailBundleClass = NSClassFromString(@"MVMailBundle");
    
    // If this class is not available that means Mail.app
    // doesn't allow bundles anymore. Fingers crossed that this never happens!
    if (!mvMailBundleClass) {
        NSLog(@"Mail.app doesn't support bundles anymore, ...so deadlock!");
        return;
    }
    
    // Registering plugin in Mail.app
    [mvMailBundleClass registerBundle];
    NSLog(@"MailBadges successfully Loaded");
    
    // Pop open an alert to let you know it's working
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"OK"];
    [alert setMessageText:@"Boilerplate Mail.app plugin successfully loaded!"];
    [alert setInformativeText:@"Awesome! Now get coding!"];
    [alert setAlertStyle:NSAlertStyleInformational];
    [alert runModal];
    
}
@end
