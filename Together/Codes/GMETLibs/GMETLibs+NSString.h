//
//  GMETLibs+NSString.h
//  Together
//
//  Created by Gnef_jp on 13-4-25.
//  Copyright (c) 2013年 GMET. All rights reserved.
//


@interface NSString (GMETLibs)

+ (NSString *) stringWithInt:(NSInteger)intValue;
+ (NSString *) stringWithDouble:(double)doubleValue;

- (NSString *) timestampToDateUsingFormat:(NSString*)format;

@end