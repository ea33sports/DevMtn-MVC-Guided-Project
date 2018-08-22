//
//  Playlist.swift
//  Playlist
//
//  Created by Eric Andersen on 8/22/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import Foundation

class Playlist: Equatable {
    
    static func == (lhs: Playlist, rhs: Playlist) -> Bool {
        return lhs.name == rhs.name && lhs.songs == rhs.songs
    }
    
    
    var name: String
    var songs: [Song]
    
    init(name: String, songs: [Song] = []) {
        self.name = name
        self.songs = songs
    }
}

