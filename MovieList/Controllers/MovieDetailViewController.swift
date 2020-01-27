//
//  MovieDetailViewController.swift
//  MovieList
//
//  Created by ilkay sever on 26.01.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var getImage = UIImage()
    var getTitle = String()
    var getDescription = String()
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTittleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageView.image = getImage
        detailTittleLabel.text! = getTitle
        descriptionTextView.text! = getDescription
        
    }

}
