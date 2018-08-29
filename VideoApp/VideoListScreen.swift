//
//  VideoListScreen.swift
//  VideoApp
//
//  Created by Mihai Deaconu on 29/08/2018.
//  Copyright © 2018 Mihai Deaconu. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {

    fileprivate var videos: [Video] {
        get {
            let tmp: [Video] = [
                Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your First App"),
                Video(image: #imageLiteral(resourceName: "dev-setup"), title: "My Dev Setup"),
                Video(image: #imageLiteral(resourceName: "int-overview"), title: "iOS Interview"),
                Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "Buttons in TableViews"),
                Video(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "UIPIckerView Tutorial"),
                Video(image: #imageLiteral(resourceName: "vlog-4"), title: "Day in the Life")
            ]
            
            return tmp
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension VideoListScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell") as! VideoCell
        let video = videos[indexPath.row]

        cell.setVideoCell(with: video)
        
        return cell
    }
}
