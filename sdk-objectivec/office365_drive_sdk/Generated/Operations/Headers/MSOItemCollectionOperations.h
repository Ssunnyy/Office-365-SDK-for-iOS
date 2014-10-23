#import "MSOIdentitySet.h"
#import "MSOItemReference.h"


/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * See License.txt in the project root for license information.
 ******************************************************************************/

#import "MSOODataOperations.h"

/**
* The header for type MSOItemCollectionOperations.
*/

@interface MSOItemCollectionOperations : MSOODataOperations
-(NSURLSessionDataTask*)add : (NSString *) name : (NSString *) nameConflict : (NSString *) type : (NSStream *) content : (void (^)(MSOItem *item, NSError *error))callback;			
-(NSURLSessionDataTask*)getByPath : (NSString *) path : (void (^)(MSOItem *item, NSError *error))callback;			
@end