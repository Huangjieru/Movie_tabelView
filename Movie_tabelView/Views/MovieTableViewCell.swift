//
//  MusicTableViewCell.swift
//  Movie_tabelView
//
//  Created by jr on 2022/9/21.
//

import UIKit


class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var picImageView: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//擴充
extension MovieTableViewCell{
    static var reuseIdentifier:String{
        "\(Self.self)"
    }
}
