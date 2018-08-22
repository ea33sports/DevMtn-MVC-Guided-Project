//
//  SongsTableViewController.swift
//  Playlist
//
//  Created by Eric Andersen on 8/22/18.
//  Copyright © 2018 Eric Andersen. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {
    
    @IBOutlet weak var songNameTextField: UITextField!
    @IBOutlet weak var artistNameTextField: UITextField!
    
    var playlist: Playlist?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = playlist?.name
    }
    
    @IBAction func addSongButtonTapped(_ sender: Any) {
        guard let songName = songNameTextField.text,
              let artistName = artistNameTextField.text,
              let playlist = playlist,
              songName != "",
              artistName != "" else { return }
        SongController.createNew(songName: songName, artistName: artistName, playlist: playlist)
        tableView.reloadData()
        songNameTextField.text = ""
        artistNameTextField.text = ""
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return playlist?.songs.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath)

        // Configure the cell...
        if let song = playlist?.songs[indexPath.row] {
            cell.textLabel?.text = song.name
            cell.detailTextLabel?.text = song.artist
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let playlist = playlist else { return }
            let song = playlist.songs[indexPath.row]
            PlaylistController.shared.remove(song: song, fromPlaylist: playlist)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
}







































