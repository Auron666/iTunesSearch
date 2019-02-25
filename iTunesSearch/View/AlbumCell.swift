//
//  AlbumCell.swift
//  iTunesSearch
//
//  Created by Benjamin Kolosov on 20/02/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class AlbumCell: UICollectionViewCell{
    
    @IBOutlet weak var albumImage:       UIImageView!
    @IBOutlet weak var albumTitleLabel:  UILabel!
    @IBOutlet weak var albumArtistLabel: UILabel!
    
    func updateCell(album: Album){
        let imageUrl = URL(string: album.artworkUrl)
        
        DispatchQueue.global().async {
            if let imageData = try? Data(contentsOf: imageUrl!){
                DispatchQueue.main.async {
                    self.albumImage.image = UIImage(data: imageData)
                }
            }
        }
        
        albumTitleLabel.text  = album.collectionName
        albumArtistLabel.text = album.artistName
    }
    
}
