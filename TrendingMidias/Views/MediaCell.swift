//
//  MediaCell.swift
//  TrendingMidias
//
//  Created by Raul de Medeiros on 02/12/22.
//

import UIKit

class MediaCell: UITableViewCell {
    @IBOutlet weak var posteImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var votesCountLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    func configLayout(media : Media){
        titleLabel.text = media.title
        dataLabel.text = media.releaseDate
        votesCountLabel.text = String(media.voteCount)
        averageLabel.text = String() 
        overviewLabel.text = media.overview
        
        configImage(media: media)
    }
    
    func configImage(media : Media){
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(media.poster)") else { return }
            DispatchQueue.global().async {
                guard let firstData = try? Data(contentsOf: url) else { return }
                DispatchQueue.main.async {
                    self.posteImage.image = UIImage(data: firstData)
                }
            }
    }
}
