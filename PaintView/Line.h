//
//  Line.h
//  PaintView
//
//  Created by William Lam on 2016-03-18.
//  Copyright © 2016 William Lam. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface Line : NSObject

@property (nonatomic) CGPoint previousLocation;
@property (nonatomic) CGPoint location;

- (instancetype)initWithPreviousLocation:(CGPoint)prevLocation location:(CGPoint)location;

@end
