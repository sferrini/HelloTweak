#import <SpringBoard/SpringBoard.h>

%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)application
{
    %orig;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello Tweek!"
                                                    message:@"My first iOS tweak!"
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil];
    [alert show];
}

%end
