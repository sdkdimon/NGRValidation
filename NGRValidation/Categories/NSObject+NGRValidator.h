//
//  NSObject+NGRValidator.h
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 03.01.2015.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (NGRValidator)

- (BOOL)ngr_isEmpty;

- (BOOL)ngr_isCountable;

@end

NS_ASSUME_NONNULL_END
