//
//  SongController.swift
//  Playlist
//
//  Created by Eric Andersen on 8/22/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import Foundation

class SongController {
    
    static func createNew(songName: String, artistName: String, playlist: Playlist) {
        let song = Song(name: songName, artist: artistName)
        PlaylistController.shared.add(song: song, toPlaylist: playlist)
    }
    
}
