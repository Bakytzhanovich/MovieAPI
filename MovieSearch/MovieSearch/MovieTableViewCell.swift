//
//  MovieTableViewCell.swift
//  MovieSearch
//
//  Created by Нурсат Шохатбек on 08.01.2024.
//

import UIKit
import SDWebImage

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var albumImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var LaguageNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(movie: AnimeNaruto) {
        movieNameLabel.text = movie.title
        LaguageNameLabel.text = movie.source
        print("Image URL: \(movie.image_url)")
        
        albumImageView.sd_setImage(with: URL(string: movie.image_url), completed: nil)
    }
}
