//
//  NSObject+NGRRuntime.h
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 23.12.2014.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (NGRRuntime)

- (NSArray<NSString*> *)ngr_propertiesOfClass:(Class)aClass;

- (NSArray<NSString*> *)ngr_properties;

- (Class)ngr_classOfPropertyNamed:(NSString *)propertyName;

@end

NS_ASSUME_NONNULL_END
