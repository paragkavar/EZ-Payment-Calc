//
//  InterestRates.h
//  Pay Calc
//
//  Created by Don Miller on 5/19/13.
//  Copyright (c) 2013 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InterestRates : NSObject

@property (nonatomic, strong) NSMutableArray *arrayInterestRates;
@property (nonatomic, strong) NSMutableArray *arrayInterestLabels;

-(void)getInterestRates;

@end
