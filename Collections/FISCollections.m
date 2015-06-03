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
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    for (NSInteger i = inputArray.count-1; i > 0; i--) {
        [outputArray addObject:inputArray[i]];
    }
    return outputArray;
}

@end
