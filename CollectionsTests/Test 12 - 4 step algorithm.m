
    NSMutableArray *artistNoHyphenSong = [[NSMutableArray alloc] init];
    NSMutableArray *artistThenSongTrimmed = [[NSMutableArray alloc] init];
    //"for" loop is Phase I --> II
    for (NSString *artistHyphenSong in playList) {
        [artistNoHyphenSong addObject: [artistHyphenSong componentsSeparatedByString:@"-"]]; //-->Phase III
        for (NSString *artistThenSong in artistNoHyphenSong) {
            artistThenSong
        }
    }

    NSString *startSmall = songsToOrganize[0];



    NSMutableDictionary *dictionaryOfOrganizedSongs = [[NSMutableDictionary alloc] init];

//    breaks the string into [Artist -] [song]
    NSMutableArray* songArtistInArrayForm = [[songsToOrganize[0] componentsSeparatedByString:@"-"] mutableCopy];

    //Just the first song, first
    songArtistInArrayForm[0] = [songArtistInArrayForm[0] mutableCopy];
    [songArtistInArrayForm[0] replaceOccurrencesOfString:@"-" withString:@" " options:NSCaseInsensitiveSearch range:NSMakeRange(0, [[songArtistInArrayForm[0] length]])];
    NSDictionary* songByArtist = [NSDictionary dictionaryWithObjects:songArtistInArrayForm[1] forKeys:songArtistInArrayForm[0]];



