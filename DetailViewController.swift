//
//  DetailViewController.swift
//  TestMD
//
//  Created by Scott Bustos on 10/2/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   // @IBOutlet weak var detailDescriptionLabel: UILabel!

     @IBOutlet weak var productImageView: UIImageView!

     func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
        if let photo = productImageView {
                photo.image = UIImage(named:detailItem!)
            }
        }else{
            productImageView.image = UIImage(named:"Corgi.jpg")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

