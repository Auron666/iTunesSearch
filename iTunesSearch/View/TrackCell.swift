//
//  TrackCell.swift
//  iTunesSearch
//
//  Created by Benjamin Kolosov on 20/02/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class TrackCell: UITableViewCell{
    
    @IBOutlet weak var trackNumber: UILabel!
    @IBOutlet weak var trackName: UILabel!
    
    func updateCell(track: Track){
        trackNumber.text = String(track.trackNumber)
        trackName.text   = track.trackName
    }
}
