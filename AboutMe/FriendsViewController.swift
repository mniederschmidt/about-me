//
//  FriendsViewController.swift
//  AboutMe
//
//  Created by Mary Niederschmidt on 8/3/17.
//  Copyright © 2017 Mary Niederschmidt. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {
    
    var friend: Friends?
    
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let friend = friend else {
            return
        }

        friendImage.image = friend.getImage()
        friendText.text = friend.getFriendsDescription()
    }
}
