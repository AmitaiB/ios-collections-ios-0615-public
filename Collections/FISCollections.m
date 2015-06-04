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
        if (i != 2) {
            [outputArray[i] appendString:@"s"];
        }
    }

    return outputArray;
}

-(NSDictionary *)countWordsInStory:(NSString*)inputString
{
    
    NSMutableArray *seperatedWords = [[inputString componentsSeparatedByString:@" "] mutableCopy];
    NSMutableArray *sepWordsIndex = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [seperatedWords count]; i++) {
        [sepWordsIndex addObject:[NSString stringWithFormat:@"%ld", (long)i]];
    }
    
    NSDictionary *outputDictionary = [NSDictionary dictionaryWithObjects:seperatedWords forKeys:sepWordsIndex];
    
    return outputDictionary;
}

-(NSDictionary *)organizeSongsByArtist:(NSArray*)playList
{
    /*
     1) NSArray --> loop over ea. NSString:                         [extract each song from the playlist]
     
        A) NSString --split--> NSArray[NSStrings]                   [split the artist from the song, returns an array]  (now we have an array of arrays)
        1) NSArray[NSStrings] --> loop over ea. NSString:
     
            B) NSString --trim--> NSString:                         [trim each element in the array (recursive?)] (now we have a trimmed array of arrays)
     
     */
    
    
    
//    NSMutableArray *artistNoHyphenSong = [[NSMutableArray alloc] init];
//    NSMutableArray *artistThenSongTrimmed = [[NSMutableArray alloc] init];
//    //"for" loop is Phase I --> II
//    for (NSString *artistHyphenSong in playList) {
//        [artistNoHyphenSong addObject: [artistHyphenSong componentsSeparatedByString:@"-"]]; //-->Phase III
//        for (NSString *artistThenSong in artistNoHyphenSong) {
//            artistThenSong
//        }
//    }
//    
//    NSString *startSmall = songsToOrganize[0];
//    
//    
//    
//    NSMutableDictionary *dictionaryOfOrganizedSongs = [[NSMutableDictionary alloc] init];
//    
////    breaks the string into [Artist -] [song]
//    NSMutableArray* songArtistInArrayForm = [[songsToOrganize[0] componentsSeparatedByString:@"-"] mutableCopy];
//    
//    //Just the first song, first
//    songArtistInArrayForm[0] = [songArtistInArrayForm[0] mutableCopy];
//    [songArtistInArrayForm[0] replaceOccurrencesOfString:@"-" withString:@" " options:NSCaseInsensitiveSearch range:NSMakeRange(0, [[songArtistInArrayForm[0] length]])];
//    NSDictionary* songByArtist = [NSDictionary dictionaryWithObjects:songArtistInArrayForm[1] forKeys:songArtistInArrayForm[0]];
//    
//    
//    
//    return dictionaryOfOrganizedSongs;
}

@end


















