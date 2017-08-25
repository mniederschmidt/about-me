//
//  MovieDetailViewController.swift
//  AboutMe
//
//  Created by Mary Niederschmidt on 8/24/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieDescriptionTextView: UITextView!
    
    var movieObject: MovieObject = MovieObject(name: "", image: "", description: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureCell()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureCell() {
        movieNameLabel.text = movieObject.name
        movieImageView.image = UIImage.init(named: movieObject.image)
        movieDescriptionTextView.text = movieObject.description
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
