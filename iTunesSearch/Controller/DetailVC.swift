//
//  DetailVC.swift
//  iTunesSearch
//
//  Created by Benjamin Kolosov on 20/02/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class DetailVC: UIViewController{
    
    
    @IBOutlet weak var albumLabel: UILabel!
//    @IBOutlet weak var artistLabel: UILabel!
//    @IBOutlet weak var genreLabel: UILabel!
//    @IBOutlet weak var countryLabel: UILabel!
//    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    
    var album: Album!
    var image: UIImage!
    var tracks = [Track]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate   = self
        tableView.dataSource = self
        
        if #available(iOS 11.0, *){
            navigationItem.largeTitleDisplayMode = .never
        }
        
        updateLabel()
        loadTracks()
    }
    
    func updateLabel(){
        albumLabel.text   = album.collectionName
//        artistLabel.text  = album.artistName
//        genreLabel.text   = album.primaryGenreName
//        countryLabel.text = album.country
//        yearLabel.text    = album.releaseData
        albumImage.image  = image
    }
    
    func loadTracks(){
        DataService.instance.getAlbumTracks(collectionId: album.collectionId) { (tracksReq) in
            self.tracks = tracksReq
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}


extension DetailVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as? TrackCell{
            cell.updateCell(track: tracks[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
