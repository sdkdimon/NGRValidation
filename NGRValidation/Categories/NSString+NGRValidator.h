//
//  NSString+NGRValidator.h
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 23.12.2014.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (NGRValidator)

- (BOOL)ngr_isEmail;

- (BOOL)ngr_isURL;

- (BOOL)ngr_isName;

- (BOOL)ngr_isDecimal;

- (NSString *)ngr_stringByCapitalizeFirstLetter;

@end

NS_ASSUME_NONNULL_END
