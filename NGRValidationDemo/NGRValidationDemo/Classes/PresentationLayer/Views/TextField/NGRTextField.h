//
//  NGRTextField.h
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 11.01.2015.
//
//

#import <UIKit/UIKit.h>

#import <NGRValidation/NGRPropertyValidator.h>

@interface NGRTextField : UITextField

@property (strong, nonatomic, readwrite) NGRPropertyValidator *textValidator;

@end
