//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Pratyush Thapa on 2/17/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    @IBOutlet weak var forkLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var picImage: UIImageView!

    
      var repo: GithubRepo! {
    
    
        
        didSet {
            nameLabel.text = repo.name
            let imageURL = repo.ownerAvatarURL
            picImage.setImageWith(imageURL as! URL)
            starLabel.text = String(repo.stars!)
            forkLabel.text = String(repo.forks!)
            ownerLabel.text = String(repo.ownerHandle!)
            descriptionLabel.text = repo.repoDescription
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
