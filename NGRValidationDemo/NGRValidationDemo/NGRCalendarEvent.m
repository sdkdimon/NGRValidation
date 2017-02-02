//
//  CalendarEvent.m
//  NGRValidator
//
//  Created by Patryk Kaczmarek on 29.12.2014.
//
//

#import "NGRCalendarEvent.h"
#import <NGRValidation/NGRValidation.h>

@interface NGRCalendarEvent () <NGRMessaging>

@end

@implementation NGRCalendarEvent

- (instancetype)init {
    self = [super init];
    if (self) {
        _enableImmediatelyValidation = NO;
    }
    return self;
}

- (instancetype)initWithDefaultDates {
    self = [super init];
    if (self) {
        _enableImmediatelyValidation = NO;
        _startDate = [self currentDateWithoutSeconds];
        _endDate = [[self currentDateWithoutSeconds] dateByAddingTimeInterval:60];
    }
    return self;
}

- (NSError *)validate {
    
    NSError *error = nil;
    BOOL success = [NGRValidator validateModel:self error:&error delegate:self rules:^NSArray *{
        return @[NGRValidate(@"title").is.required().to.have.minLength(6).msgTooShort(@"should have at least 6 signs"),
                 NGRValidate(@"creatorLastName").is.required().to.have.lengthRange(4, 30).syntax(NGRSyntaxName),
                 NGRValidate(@"email").is.required().to.have.syntax(NGRSyntaxEmail),
                 NGRValidate(@"url").should.have.syntax(NGRSyntaxHTTP).allowEmpty(),
                 NGRValidate(@"startDate").is.required().to.be.laterThanOrEqualTo([self currentDateWithoutSeconds]).earlierThan(self.endDate),
                 NGRValidate(@"endDate").is.required().to.be.laterThan(self.startDate),
                 NGRValidate(@"termsOfUse").is.required().to.beTrue()];
    }];
    
    success ? NSLog(@"Event validation succeed") : NSLog(@"Event validation failed because of an error: %@", error.localizedDescription);
    return error;
}

- (NSDate *)currentDateWithoutSeconds {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute fromDate:[NSDate date]];
    
    return [calendar dateFromComponents:dateComponents];;
}

#pragma mark - NGRMessaging

- (NSDictionary *)validationErrorMessagesByPropertyKey {
    
    return @{@"termsOfUse" : @{MSGNil : @"You have to accept terms of use.",
                               MSGNotTrue : @"You have to accept terms of use." },
             
             @"endDate" : @{MSGNotLaterThan : @"Event end date cannot be earlier than it's start"},
             
             @"startDate" : @{MSGNotLaterThanOrEqualTo : @"Event start date cannot be earlier than now.",
                              MSGNotEarlierThan : @"Event start date cannot be later than it's end."},
             
             @"creatorLastName" : @{MSGTooShort : @"Lastname should have at least 4 signs.",
                                    MSGTooLong : @"Lastname should have at most 30 signs."}};
}

#pragma mark - Demo specific

/**
 *  For demo purposes:
 *  To all setters method [self validate] has been added, to make easier to show validation process in demo app.
 */

- (void)setTitle:(NSString *)title {
    _title = title;
    if (self.isImmediatelyValidationEnabled) [self validate];
}

- (void)setCreatorLastName:(NSString *)creatorLastName {
    _creatorLastName = creatorLastName;
    if (self.isImmediatelyValidationEnabled) [self validate];
}

- (void)setEmail:(NSString *)email {
    _email = email;
    if (self.isImmediatelyValidationEnabled) [self validate];
}

- (void)setUrl:(NSString *)url {
    _url = url;
    if (self.isImmediatelyValidationEnabled) [self validate];
}

- (void)setStartDate:(NSDate *)startDate {
    _startDate = startDate;
    if (self.isImmediatelyValidationEnabled) [self validate];
}

- (void)setEndDate:(NSDate *)endDate {
    _endDate = endDate;
    if (self.isImmediatelyValidationEnabled) [self validate];
}

- (void)setTermsOfUse:(BOOL)termsOfUse {
    _termsOfUse = termsOfUse;
    if (self.isImmediatelyValidationEnabled) [self validate];
}

@end
