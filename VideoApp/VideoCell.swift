//
//  VideoCell.swift
//  VideoApp
//
//  Created by Mihai Deaconu on 29/08/2018.
//  Copyright © 2018 Mihai Deaconu. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    public func setVideoCell(with video: Video) {
        self.videoImageView.image = video.image
        self.videoTitleLabel.text = video.title
    }
}
