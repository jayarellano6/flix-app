//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Jay Arellano on 2/4/19.
//  Copyright © 2019 Jay Arellano. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!
    @IBOutlet weak var detailsPoster: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var miniDetailsPoster: UIImageView!
    @IBOutlet weak var detailsTitle: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(movie["title"])
        detailsLabel.text = movie["overview"] as? String
        detailsTitle.text = movie["title"] as? String
        let date = movie["release_date"] as? String
        releaseDateLabel.text = "release date: " + date!
//        detailsTitle.sizeToFit()
//        detailsTitle.numberOfLines = 2
        detailsLabel.sizeToFit()
        detailsLabel.numberOfLines = 10
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let backdropPath = movie["backdrop_path"] as! String
        let posterPath = movie["poster_path"] as! String
        
        
        let backropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        let posterUrl = URL(string: baseUrl + posterPath)
        
        detailsPoster.af_setImage(withURL: backropUrl!)
        miniDetailsPoster.af_setImage(withURL: posterUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
