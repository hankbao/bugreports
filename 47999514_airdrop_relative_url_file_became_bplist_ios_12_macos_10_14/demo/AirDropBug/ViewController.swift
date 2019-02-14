//
//  ViewController.swift
//  AirDropBug
//
//  Created by Hank Bao on 2/12/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var docShare: UIDocumentInteractionController?

    override func viewDidLoad() {
        let fileUrl = URL(fileURLWithPath: "test.txt", relativeTo: Bundle.main.resourceURL)
        docShare = UIDocumentInteractionController(url: fileUrl)
    }

    @IBAction func shareButtonTapped(sender: UIButton) -> Void {
        docShare?.presentOpenInMenu(from: sender.bounds, in: sender, animated: true)
    }
}

