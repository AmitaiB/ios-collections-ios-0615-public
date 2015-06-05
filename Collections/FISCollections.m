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
    outputArray[2] = inputArray[1];
    outputArray[1] = inputArray[2];
    return outputArray;
}

-(NSArray *)reverseArray:(NSArray *)inputArray
{
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    for (NSInteger i = inputArray.count-1; i >= 0; i--) {
        [outputArray addObject:inputArray[i]];
    }
    return outputArray;
}

-(NSArray *)keshaMaker:(NSArray *)normalNamesArray
{
//    NSRange *thirdElement =
//    
//    [[NSRange alloc ] NSRangeFromString(@"3,1")];
//    [NSRangeFromString(@"3,1")];
//withString:@"$"
    NSMutableArray *mutableNamesArray = [[NSMutableArray alloc] initWithArray:normalNamesArray];

    for (NSInteger i = 0; i < [mutableNamesArray count]; i++) {
        NSArray *immutableName = mutableNamesArray[i];
        NSMutableString *mutableName = [immutableName mutableCopy];
        [mutableName replaceCharactersInRange:NSMakeRange(2, 1) withString:@"$"];
        [mutableNamesArray replaceObjectAtIndex:i withObject:mutableName];
    }

    
//        NSMutableArray *mOutputArray = [(NSArray*)mutableNamesArray[i] mutableCopy];
    
//        [mOutputArray replaceCharactersInRange:[];
//        [outputArray[i] =
    
    
    
    return [mutableNamesArray copy];
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
    
    return [outputArray copy];
}

-(NSArray *)findA:(NSArray*)inputArray
{
    NSMutableArray *outputArray = [@[] mutableCopy];
    for (NSString *word in inputArray) {
        if ([word hasPrefix:@"a"]) {
            [outputArray addObject:word];
        }
    }
    return outputArray;
}

-(NSInteger *)sumArray:(NSArray*)inputArray
{
    NSInteger total = 0;
    
    for (NSNumber *number in inputArray) {
        total = total + [number integerValue];
    }
    
    return total;
}

-(NSArray *)addS:(NSArray*)inputArray
{
    NSMutableArray *outputArray = [inputArray mutableCopy];
    for (NSInteger i = 0; i < [inputArray count]; i++) {
        if (i != 1) {
            [outputArray[i] = [outputArray[i] mutableCopy] appendString:@"s"];
        }
    }
    NSLog(@"%@", outputArray);
    return [outputArray copy];
}

-(NSDictionary *)countWordsInStory:(NSString*)inputString
{
    
    NSMutableArray *seperatedWords = [[inputString componentsSeparatedByString:@" "] mutableCopy];
    NSMutableDictionary *wordCountLedger = [[NSMutableDictionary alloc] init];
    
    for (NSString *word in seperatedWords) {
        if ([[wordCountLedger allKeys] containsObject:word]) {
            wordCountLedger[word] = @([wordCountLedger[word] intValue] + 1);
        } else {
            [wordCountLedger setObject:@1 forKey:word];
        }
    }
    NSLog(@"%@", wordCountLedger);
    return [wordCountLedger copy];
}

-(NSDictionary *)organizeSongsByArtist:(NSArray*)inputPlayList
{
    
    //I Array of Strings --> Array of Arrays
    NSMutableArray *oldPlayList = [inputPlayList mutableCopy];
    
    for (NSUInteger i = 0; i < [oldPlayList count]; i++) {
        [oldPlayList[i] replaceObjectAtIndex:i withObject:[oldPlayList[i] componentsSeparatedByString:@"-"]];
    }
    NSLog(@"The array values: %@", [oldPlayList description]);
    //II New Dictionary!
    NSMutableDictionary *newPlayList = [@{} mutableCopy];
    
    //Keep in mind!: The keys(Artists) are all in the [0] column, and the paired-values are all in the [1] column.
    //If the artist is already listed, add the song to the existing discography.
    //Else, add the artist to the list, and create a discography with that song as the first element.
    [oldPlayList enumerateObjectsUsingBlock:^(id artistSongPair, NSUInteger idx, BOOL *stop) {
        NSString *theArtist = [self stringTrimmer:artistSongPair[0]];
        NSArray *theDiscography = [self stringTrimmer:artistSongPair[1]];
        
        if ([[newPlayList allKeys] /* already */ containsObject:theArtist]) {
            NSMutableArray *tempSongs = [NSMutableArray arrayWithArray:[newPlayList valueForKey:theArtist]];
            [tempSongs addObject:theDiscography];
            [newPlayList setObject:tempSongs forKey:theArtist];
            //newPlayList [the key we found is already there] [change the value = set it to a new array based on the old]
        } else {
        [newPlayList setValue:theDiscography forKey:theArtist];
        }
    }];
    return newPlayList;
}

-(NSMutableString *)stringTrimmer:(NSMutableString *)inputString {
    NSCharacterSet *whitespace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    return [[inputString stringByTrimmingCharactersInSet:whitespace] mutableCopy];
};


@end