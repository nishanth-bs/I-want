//
//  HomeDetailViewController.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import UIKit

class HomeDetailViewController: UIViewController {

    @IBOutlet weak var itemImageView: UIImageView!
    var presenterOutput: HomeDetailPresenterProtocol?
    var type: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        presenterOutput?.shuffleCta(forType: type ?? "")
    }
    @IBAction func shuffleClicked(_ sender: Any) {
        presenterOutput?.shuffleCta(forType: type ?? "")
    }
}

extension HomeDetailViewController: HomeDetailViewProtocol {
    func updateImage(withName str: String) {
        UIView.animate(withDuration: 0.5) {
            self.itemImageView.alpha = 0
        }
        itemImageView.image = UIImage(named: str)
        UIView.animate(withDuration: 0.5) {
            self.itemImageView.alpha = 1
        }
    }
}
