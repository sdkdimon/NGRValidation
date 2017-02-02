//
//  NGRValidation.h
//  NGRValidation
//
//  Created by dimon on 02/02/2017.
//
//

//! Project version number for NGRValidation.
FOUNDATION_EXPORT double NGRValidationVersionNumber;

//! Project version string for NGRValidation.
FOUNDATION_EXPORT const unsigned char NGRValidationVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <NGRValidation/PublicHeader.h>

#import <NGRValidation/NGRValidator.h>
#import <NGRValidation/NGRPropertyValidator.h>

#import <NGRValidation/NGRValidationRule.h>
#import <NGRValidation/NSArray+NGRValidator.h>
#import <NGRValidation/NSDate+NGRValidator.h>
#import <NGRValidation/NSObject+NGRValidator.h>
#import <NGRValidation/NSError+NGRValidator.h>
#import <NGRValidation/NSString+NGRValidator.h>
#import <NGRValidation/NSObject+NGRRuntime.h>

//property validators:
#import <NGRValidation/NGRPropertyValidator+NSString.h>
#import <NGRValidation/NGRPropertyValidator+NSObject.h>
#import <NGRValidation/NGRPropertyValidator+NSNumber.h>
#import <NGRValidation/NGRPropertyValidator+Syntax.h>
#import <NGRValidation/NGRPropertyValidator+NSDate.h>
#import <NGRValidation/NGRPropertyValidator+SugarSyntax.h>
#import <NGRValidation/NGRPropertyValidator+NSArray.h>


//protocols:
#import <NGRValidation/NGRMessaging.h>

//constants
#import <NGRValidation/NGRConstants.h>

//headers:
#import <NGRValidation/NGRValidatorDeprecated.h>
#import <NGRValidation/NGRValidatorShorthand.h>

