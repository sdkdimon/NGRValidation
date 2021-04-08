//
//  UIViewController+NGRDemo.m
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 12.01.2015.
//
//

#import "UIViewController+NGRDemo.h"

@implementation UIViewController (NGRDemo)

- (void)showAlertViewWithError:(NSError *)error {
    if (error) {
        [self showAlertViewWithTitle:NSLocalizedString(@"Validation failed!", nil) message:error.localizedDescription];
    } else {
        [self showAlertViewWithTitle:NSLocalizedString(@"Validation succeed!", nil) message:NSLocalizedString(@"Now you can do with your event whatever you want, cause you are sure your event passed validation. High five!", nil)];
    }
}

- (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"OK", nil) style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
