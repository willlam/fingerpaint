//
//  Line.m
//  PaintView
//
//  Created by William Lam on 2016-03-18.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)initWithPreviousLocation:(CGPoint)prevLocation location:(CGPoint)location
{
	self = [super init];
	if (self) {
		_previousLocation = prevLocation;
		_location = location;
	}
	return self;
}

@end
