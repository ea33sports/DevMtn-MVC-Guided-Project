//
//  Song.swift
//  Playlist
//
//  Created by Eric Andersen on 8/22/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import Foundation

class Song: Equatable {
    static func == (lhs: Song, rhs: Song) -> Bool {
        return lhs.name == rhs.name && lhs.artist == rhs.artist
    }
    
    
    var name: String
    var artist: String
    
    init(name: String, artist: String) {
        self.name = name
        self.artist = artist
    }
}
