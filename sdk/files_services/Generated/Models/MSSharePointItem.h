/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/

@class MSSharePointIdentitySet;
@class MSSharePointItemReference;

#import <Foundation/Foundation.h>
#import "MSOrcBaseEntity.h"

/**
* The header for type Item.
*/

@interface MSSharePointItem : MSOrcBaseEntity

@property (copy, nonatomic, readwrite, getter=createdBy, setter=setCreatedBy:) MSSharePointIdentitySet *createdBy;
@property (copy, nonatomic, readwrite, getter=eTag, setter=setETag:) NSString *eTag;
@property (copy, nonatomic, readwrite, getter=id, setter=setId:) NSString *id;
@property (copy, nonatomic, readwrite, getter=lastModifiedBy, setter=setLastModifiedBy:) MSSharePointIdentitySet *lastModifiedBy;
@property (copy, nonatomic, readwrite, getter=name, setter=setName:) NSString *name;
@property (copy, nonatomic, readwrite, getter=parentReference, setter=setParentReference:) MSSharePointItemReference *parentReference;
@property (nonatomic, getter=size, setter=setSize:) int size;
@property (copy, nonatomic, readwrite, getter=dateTimeCreated, setter=setDateTimeCreated:) NSDate *dateTimeCreated;
@property (copy, nonatomic, readwrite, getter=dateTimeLastModified, setter=setDateTimeLastModified:) NSDate *dateTimeLastModified;
@property (copy, nonatomic, readwrite, getter=type, setter=setType:) NSString *type;
@property (copy, nonatomic, readwrite, getter=webUrl, setter=setWebUrl:) NSString *webUrl;

@end