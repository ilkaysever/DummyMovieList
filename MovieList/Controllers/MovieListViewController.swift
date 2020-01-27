//
//  MovieListViewController.swift
//  MovieList
//
//  Created by ilkay sever on 25.01.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class MovieListViewController: UIViewController {
    
    
    @IBOutlet weak var movieListTableView: UITableView!
    
    let data = DataSet()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Navigasyon Barını Bu Controllerda inAktif Yapma.
        //self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }
    
    private func setDelegates(){
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
    }

}

extension MovieListViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        cell.movieImgView.image = UIImage(named: data.movies[indexPath.row].imageName)
        cell.titleLabel.text = data.movies[indexPath.row].title
        cell.descriptionLabel.text = data.movies[indexPath.row].description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "MovieDetailViewController") as! MovieDetailViewController
        DvC.getImage = UIImage(named: data.movies[indexPath.row].imageName)!
        DvC.getTitle = data.movies[indexPath.row].title
        DvC.getDescription = data.movies[indexPath.row].description
        self.navigationController?.pushViewController(DvC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
}
