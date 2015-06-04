//
//  FISCollections.h
//  Collections
//
//  Created by Chris Gonzales on 5/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCollections : NSObject

//declare methods here

-(NSArray *)sortArrayAsc:(NSArray *)inputArray;

-(NSArray *)sortArrayDesc:(NSArray *)inputArray;

-(NSArray *)swapElements:(NSArray *)inputArray;

-(NSArray *)reverseArray:(NSArray *)inputArray;

-(NSArray *)keshaMaker:(NSArray *)inputArray;

-(NSDictionary *)greaterAndLessThan10:(NSArray *)inputArray;

-(NSArray *)findWinners:(NSDictionary*)inputDictionary;

-(NSArray *)findA:(NSArray*)inputArray;

-(NSInteger *)sumArray:(NSArray*)inputArray

@end
