//
//  MovieCell.swift
//  MovieList
//
//  Created by ilkay sever on 25.01.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var movieImgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setImageView()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func setImageView(){
        movieImgView.layer.cornerRadius = 5
    }

}
