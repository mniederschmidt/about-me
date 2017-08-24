//
//  FavoriteMoviesViewController.swift
//  AboutMe
//
//  Created by Mary Niederschmidt on 8/24/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

class FavoriteMoviesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let moviePicArray = ["Movie1.jpg", "Movie2.jpg", "Movie3.jpg", "Movie4.jpg", "Movie5.jpg", "Movie6.jpg", "Movie7.jpg", "Movie8.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviePicArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Movie Cell", for: indexPath) as! MovieCollectionViewCell
        cell.movieImageView.image = UIImage.init(named: moviePicArray[indexPath.row])
        return cell
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
