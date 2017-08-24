//
//  FavoriteMoviesViewController.swift
//  AboutMe
//
//  Created by Mary Niederschmidt on 8/24/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

struct MovieObject {
    let name: String
    let image: String
    let description: String
}

class FavoriteMoviesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
//    let moviePicArray = ["Movie1.jpg", "Movie2.jpg", "Movie3.jpg", "Movie4.jpg", "Movie5.jpg", "Movie6.jpg", "Movie7.jpg", "Movie8.jpg"]
    
    let movie1 = MovieObject(name: "A Dog's Purpose", image: "Movie1.jpg", description: "A dog looks to discover his purpose in life over the course of several lifetimes and owners.")
    let movie2 = MovieObject(name: "Marley & Me", image: "Movie2.jpg", description: "A family learns important life lessons from their adorable, but naughty and neurotic dog.")
    let movie3 = MovieObject(name: "My Dog Skip", image: "Movie3.jpg", description: "A shy boy grows up in 1940s Mississippi with the help of his beloved dog, Skip.")
    let movie4 = MovieObject(name: "Up", image: "Movie4.jpg", description: "Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.")
    let movie5 = MovieObject(name: "Lassie", image: "Movie5.jpg", description: "A family in financial crisis is forced to sell Lassie, their beloved dog. Hundreds of miles away from her true family, Lassie escapes and sets out on a journey home.")
    let movie6 = MovieObject(name: "Quill", image: "Movie6.jpg", description: "As a Labrador puppy, Quill is sent to live with a couple, Isamu and Mitsuko Nii, who work as volunteers, training guide dogs (seeing eye dogs). When he grows to an adult dog, he is taken to a guide dog school, by a friendly, yet firm trainer Satoru Tawada. Although Quill is a little slower than the other dogs at the school, he seems to have an unusual 'empathy' and remarkable patience with his trainers. Tawade decides that Quill would be the ideal guide dog for Mitsuru Watanabe, but Wanatabe, a lonely and ill-tempered middle aged man, isn't as enthusiastic - he would 'would rather sleep than be dragged around by a dog.'. From here, the story is narrated by Wanatabe's daughter, Mitsuko, and slowly, Wantanbe is rehabilitated, venturing into the outside world, and learning, not only to trust other humans, but the animal at his side who guides him.")
    let movie7 = MovieObject(name: "Far From Home", image: "Movie7.jpg", description: "Teenage Angus adopts a stray dog and names him Yellow. Several days later, while traveling along the coast of British Columbia with Angus' father, John, the boy and dog become stranded when turbulent waters capsize their boat. Angus's parents relentlessly badger rescue teams. Angus, schooled by his father in wilderness survival skills, and assisted by the intelligent Yellow Dog, tries to attract rescuers.")
    let movie8 = MovieObject(name: "Rock Dog", image: "Movie8.jpg", description: "When a radio falls from the sky into the hands of a wide-eyed Tibetan Mastiff, he leaves home to fulfill his dream of becoming a musician, setting into motion a series of completely unexpected events.")
    
    var movieArray: Array<MovieObject> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        movieArray = [movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8]

        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Movie Cell", for: indexPath) as! MovieCollectionViewCell
        cell.movieImageView.image = UIImage.init(named: movieArray[indexPath.row].image)
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
