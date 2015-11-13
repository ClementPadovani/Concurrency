//
//  AnObject.m
//  overflow
//
//  Created by Clément Padovani on 11/13/15.
//  Copyright (c) 2015 Clément Padovani. All rights reserved.
//

#import "AnObject.h"
#import "Swizzle.h"

@interface NSObject (Additions)

+ (id) sz_alloc;

@end

@implementation NSObject (Additions)

+ (void) load
{
	NSError *swizzleError = nil;
	
	if (![NSObject jr_swizzleClassMethod: @selector(alloc)
					 withClassMethod: @selector(sz_alloc)
							 error: &swizzleError])
		NSLog(@"error: %@", swizzleError);
}

+ (id) sz_alloc
{
	return nil;
}

@end

@interface AnObject ()

@end

@implementation AnObject



@end
