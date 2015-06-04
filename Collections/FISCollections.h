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
//Test 1
-(NSArray *)sortArrayAsc:(NSArray *)inputArray;

//Test 2
-(NSArray *)sortArrayDesc:(NSArray *)inputArray;

//Test 3
-(NSArray *)swapElements:(NSArray *)inputArray;

//Test 4
-(NSArray *)reverseArray:(NSArray *)inputArray;

//Test 5
-(NSArray *)keshaMaker:(NSArray *)inputArray;

//Test 6
-(NSDictionary *)greaterAndLessThan10:(NSArray *)inputArray;

//Test 7
-(NSArray *)findWinners:(NSDictionary*)inputDictionary;

//Test 8
-(NSArray *)findA:(NSArray*)inputArray;

//Test 9
-(NSInteger *)sumArray:(NSArray*)inputArray;

//Test 10
-(NSArray *)addS:(NSArray*)inputArray;

//Test 11
-(NSDictionary *)countWordsInStory:(NSString *)inputString;

//Test 12
@end
