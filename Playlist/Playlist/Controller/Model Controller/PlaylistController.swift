//
//  PlaylistController.swift
//  Playlist
//
//  Created by Eric Andersen on 8/22/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import Foundation

class PlaylistController {
    
    static let shared = PlaylistController()
    
    var playlists: [Playlist] = []
    
    // CRUD: Create, Read, Update, Delete
    
    func createPlaylist(name: String) {
        let playlist = Playlist(name: name)
        self.playlists.append(playlist)
    }
    
    func update(playlist: Playlist) {
        
    }
    
    func delete(playlist: Playlist) {
        guard let index = playlists.index(of: playlist) else { return }
        self.playlists.remove(at: index)
    }
    
    func add(song: Song, toPlaylist playlist: Playlist) {
        playlist.songs.append(song)
    }
    
    func remove(song: Song, fromPlaylist playlist: Playlist) {
        guard let index = playlist.songs.index(of: song) else { return }
        playlist.songs.remove(at: index)
    }
}
