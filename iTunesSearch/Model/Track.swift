//
//  Track.swift
//  iTunesSearch
//
//  Created by Benjamin Kolosov on 20/02/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

struct Track {
    
    var trackName: String
    var trackNumber: Int
    
    init(trackName: String, trackNumber: Int) {
        self.trackName   = trackName
        self.trackNumber = trackNumber
    }
}
