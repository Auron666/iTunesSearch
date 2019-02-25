//
//  Album.swift
//  iTunesSearch
//
//  Created by Benjamin Kolosov on 20/02/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

class Album {
    
    let artistName:       String
    var artworkUrl:       String
    let collectionId:     Int
    let collectionName:   String
    let country:          String
    let primaryGenreName: String
    let releaseData:      String
    
    init(artistName: String, artworkUrl: String, collectionId: Int, collectionName: String, country: String, primaryGenreName: String, releaseDate: String) {
        self.artistName       = artistName
        self.artworkUrl       = artworkUrl
        self.collectionId     = collectionId
        self.collectionName   = collectionName
        self.country          = country
        self.primaryGenreName = primaryGenreName
        self.releaseData      = releaseDate
    }
}
