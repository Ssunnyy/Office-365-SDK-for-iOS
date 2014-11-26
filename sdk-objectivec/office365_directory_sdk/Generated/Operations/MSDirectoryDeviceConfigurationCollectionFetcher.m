/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * Licensed under the Apache License, Version 2.0.
 * See License.txt in the project root for license information.
 *
 * Warning: This code was generated automatically. Edits will be overwritten.
 * To make changes to this code, please make changes to the generation framework itself:
 * https://github.com/MSOpenTech/odata-codegen
 *******************************************************************************/

#import "MSDirectoryDeviceConfigurationCollectionFetcher.h"

/**
* The implementation file for type MSDirectoryDeviceConfigurationCollectionFetcher.
*/

@implementation MSDirectoryDeviceConfigurationCollectionFetcher

-(id)initWithUrl:(NSString *)urlComponent parent:(id<MSODataReadable>)parent;{
    return [super initWithUrl:urlComponent parent:parent andEntityClass:[MSDirectoryDeviceConfiguration class]];
}

-(NSURLSessionDataTask*)addEntity:(MSDirectoryDeviceConfiguration*)entity withCallback:(void (^)(MSDirectoryDeviceConfiguration *deviceConfiguration, NSError *e))callback{
	return [super add:entity :^(id r, NSError *e) {
        callback(r,e);
    }];
}

-(MSDirectoryDeviceConfigurationFetcher*)getById:(NSString *)Id{
	[super getById:Id];
    return [[MSDirectoryDeviceConfigurationFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" ,Id] parent : self andEntityClass :[MSDirectoryDeviceConfiguration class]];
}
@end