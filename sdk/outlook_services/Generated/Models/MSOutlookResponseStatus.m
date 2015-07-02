/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/

#import "MSOutlookModels.h"

/**
* The implementation file for type ResponseStatus.
*/

@implementation MSOutlookResponseStatus	

@synthesize odataType = _odataType;
@synthesize Response = _response;
@synthesize Time = _time;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.ResponseStatus";
	}

	return self;
}


- (void)setResponseString:(NSString *)value {

	if ([value isEqualToString:@"None"]) {

		self.Response = MSOutlook_ResponseType_None;
        [self valueChanged:value forProperty:@"Response"];
	}

	if ([value isEqualToString:@"Organizer"]) {

		self.Response = MSOutlook_ResponseType_Organizer;
        [self valueChanged:value forProperty:@"Response"];
	}

	if ([value isEqualToString:@"TentativelyAccepted"]) {

		self.Response = MSOutlook_ResponseType_TentativelyAccepted;
        [self valueChanged:value forProperty:@"Response"];
	}

	if ([value isEqualToString:@"Accepted"]) {

		self.Response = MSOutlook_ResponseType_Accepted;
        [self valueChanged:value forProperty:@"Response"];
	}

	if ([value isEqualToString:@"Declined"]) {

		self.Response = MSOutlook_ResponseType_Declined;
        [self valueChanged:value forProperty:@"Response"];
	}

	if ([value isEqualToString:@"NotResponded"]) {

		self.Response = MSOutlook_ResponseType_NotResponded;
        [self valueChanged:value forProperty:@"Response"];
	}
}
 
- (void)setTime:(NSDate *)  time;
{
    _time =  time;
    [self valueChanged:time forProperty:@"Time"];
}


@end