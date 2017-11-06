//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Mary Niederschmidt on 8/3/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

enum Friends: Int {
    case dogs
    case people
    
    func getFriendsDescription() -> String {
        switch self {
        case .dogs:
            return "This is my best friend, Yadi"
        case .people:
            return "This is my buddy.  He is a great kid.  I love to play baseball with him."
        }
    }
    
    func getImage() -> UIImage {
        switch self {
        case .dogs:
            return #imageLiteral(resourceName: "Yadi")
        case .people:
            return #imageLiteral(resourceName: "CaseyFriend1")
        }
    }
}

class AboutMeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Casey"
    }
    
    @IBAction func handlePan(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func handlePinch(recognizer: UIPinchGestureRecognizer) {
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
        }
    }

    @IBAction func moreInfo(_ sender: Any) {
    }

    
    @IBAction func showFriends(_ sender: Any) {
        performSegue(withIdentifier: "myFriends", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "myFriends" {
            if let friendsViewController = segue.destination as? FriendsViewController {
                friendsViewController.friend = Friends(rawValue: segmentedControl.selectedSegmentIndex)
            }
        }
    }
}
