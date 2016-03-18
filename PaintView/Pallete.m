//
//  Pallete.m
//  PaintView
//
//  Created by William Lam on 2016-03-18.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Pallete.h"
#import "Line.h"

@interface Pallete()

@property (nonatomic, strong) NSMutableArray *lines;

@end

@implementation Pallete



- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	if (self = [super initWithCoder:aDecoder]) {
		_lines = [[NSMutableArray alloc] init];
	}
	return self;
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	[self createLineWithTouches:touches];
}

- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	[self createLineWithTouches:touches];
}

- (void) createLineWithTouches:(NSSet<UITouch *>*)touches {
	UITouch *touch = [touches anyObject];
	CGPoint location = [touch locationInView:self];
	NSLog(@"BEGAN --> %@", NSStringFromCGPoint(location));
	
	Line *line = [[Line alloc] initWithPreviousLocation:location location:location];
	[self.lines addObject:line];
	[self setNeedsDisplay];
}

- (void) drawRect:(CGRect)rect {
	UIBezierPath *bezierPath = [UIBezierPath bezierPath];
	bezierPath.lineCapStyle = kCGLineJoinRound;
	bezierPath.lineWidth = 10;
	[[UIColor redColor] set];
	
	for (Line *line in self.lines) {
		[bezierPath moveToPoint:line.previousLocation];
		[bezierPath addLineToPoint:line.location];
	}
	[bezierPath stroke];
}



//- (void) CGPointData:(NS) {
//	UITouch *touch = [touch anyObject];
//	CGPoint location = [touch locationInView:self];
//	NSLog(@"BEGAN --> %@", NSStringFromCGPoint(location));
//
//}



@end
