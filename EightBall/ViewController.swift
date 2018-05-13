//
//  ViewController.swift
//  EightBall
//
//  Created by Ruurd Pels on 13-05-2018.
//  Copyright © 2018 Bureau Pels. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static let ballNames = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    static let ballCount = UInt32(ballNames.count)

    @IBOutlet weak var eightBallImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateEightBallImage()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateEightBallImage()
    }

    func updateEightBallImage() {

        let ball: Int = Int(arc4random_uniform(ViewController.ballCount))
        eightBallImageView?.image = UIImage(named: ViewController.ballNames[ball])
    }
}
