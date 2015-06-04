//
//  FISCollections.m
//  Collections
//
//  Created by Chris Gonzales on 5/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISCollections.h"

@implementation FISCollections

//define methods here
-(NSArray *)sortArrayAsc:(NSArray *)inputArray
{
    NSSortDescriptor *sortArrayAscDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    NSArray *sortedArray = [inputArray sortedArrayUsingDescriptors:@[sortArrayAscDescriptor]];
    
    return sortedArray;
    
}

-(NSArray *)sortArrayDesc:(NSArray *)inputArray
{
    NSSortDescriptor *sortArrayDescDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    NSArray *sortedArray = [inputArray sortedArrayUsingDescriptors:@[sortArrayDescDescriptor]];
    
    return sortedArray;
    
}

-(NSArray *)swapElements:(NSArray *)inputArray
{
    NSMutableArray *outputArray = [[NSMutableArray alloc] initWithArray:inputArray];
    outputArray[2] = inputArray[3];
    outputArray[3] = inputArray[2];
    return outputArray;
}

-(NSArray *)reverseArray:(NSArray *)inputArray
{
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    for (NSInteger i = inputArray.count-1; i > 0; i--) {
        [outputArray addObject:inputArray[i]];
    }
    return outputArray;
}

-(NSArray *)keshaMaker:(NSArray *)inputArray
{
    NSMutableArray *outputArray = [[NSMutableArray alloc] initWithArray:inputArray];
    [outputArray[3] replaceCharactersInRange:NSRangeFromString(@"3,1") withString:@"$"];
    return outputArray;
}

-(NSDictionary *)greaterAndLessThan10:(NSArray *)inputArray
{
    NSPredicate *greaterThan10 = [NSPredicate predicateWithFormat:@"self>%ul",10];
    NSPredicate *lessThan10    = [NSPredicate predicateWithFormat:@"self<%ul",10];

    NSArray *greater_than_10 = [NSMutableArray arrayWithArray:[inputArray filteredArrayUsingPredicate:greaterThan10]];
    NSArray *less_than_10 = [NSMutableArray arrayWithArray:[inputArray filteredArrayUsingPredicate:lessThan10]];
    
    NSDictionary *outputDictionary = [NSDictionary dictionaryWithObjects:@[greater_than_10, less_than_10] forKeys:@[@"greater_than_10", @"less_than_10"]];
    
    return outputDictionary;
}

-(NSArray *)findWinners:(NSDictionary *)inputDictionary
{
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    for (NSString *key in inputDictionary) {
        if ([inputDictionary[key] isEqualToString:@"winner"]) {
            [outputArray addObject:key];
        }
    }
    
    return outputArray;
}

/*
//I created a helper method, reverseDictionary...
-(NSArray *)findWinners:(NSDictionary*)inputDictionary
{
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    NSDictionary *flippedDictionary = [self reverseDictionary:inputDictionary];
//    NSDictionary *flippedDictionary = [[NSDictionary alloc] initWithDictionary:inputDictionary];
    for (NSString *winnerOrLoserKey in flippedDictionary) {
        if ([winnerOrLoserKey isEqual: @"winner"]) {
            outputArray addObject:flippedDictionary[winnerOrLoserKey]
        }
    }
    
    return outputArray;
}
*/
 
 
-(NSDictionary *)reverseDictionary:(NSDictionary*)inputDictionary
{
    NSArray *inputKeys = [inputDictionary allKeys];
    NSMutableArray *inputValues = [[NSMutableArray alloc] init];

    for (NSString *key in inputKeys) {
        NSString *value = [inputDictionary valueForKey:key];
        [inputValues addObject:value];
    }
    
    NSDictionary *theReversedDictionary = [[NSDictionary alloc] initWithObjects:inputKeys forKeys:inputValues];
    
    return theReversedDictionary;
}

@end
