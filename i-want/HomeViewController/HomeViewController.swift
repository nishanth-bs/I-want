//
//  ViewController.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var answerLbl: UILabel!
    @IBOutlet weak var answerSubtitleLbl: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var petButton: UIButton!
    @IBOutlet weak var plantButton: UIButton!
    @IBOutlet weak var bookButton: UIButton!
    var presenterOutput: HomePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenterOutput?.viewLoaded()
    }
    override func viewWillAppear(_ animated: Bool) {
        presenterOutput?.viewLoaded()
    }
    @IBAction func petButtonCliked(_ sender: Any) {
        presenterOutput?.didClickButton(withTitle: (sender as? UIButton)?.titleLabel?.text ?? "")
    }
    @IBAction func plantButtonClicked(_ sender: Any) {
        presenterOutput?.didClickButton(withTitle: (sender as? UIButton)?.titleLabel?.text ?? "")
    }
    @IBAction func bookButtonClicke(_ sender: Any) {
        presenterOutput?.didClickButton(withTitle: (sender as? UIButton)?.titleLabel?.text ?? "")
    }
    @IBAction func continueButtonClicked(_ sender: Any) {
        presenterOutput?.didClickContinue()
    }
    @IBAction func clearButtonClicked(_ sender: Any) {
        presenterOutput?.didClickClear()
    }
}

extension HomeViewController: HomeViewProtocol {
    func customizeViewsOnLoad() {
        continueButton.isHidden = true
        answerLbl.isHidden = true
        answerSubtitleLbl.isHidden = true
        clearButton.isHidden = true
    }
    func clearState() {
        customizeViewsOnLoad()
    }
    func updateState(forData data: HomeScreenDataModel) {
        continueButton.isHidden = false
        answerLbl.isHidden = false
        answerSubtitleLbl.isHidden = false
        clearButton.isHidden = false
        answerLbl.alpha = 0
        answerSubtitleLbl.alpha = 0
        answerLbl.text = data.title.rawValue
        answerSubtitleLbl.text = data.subtitle
        UIView.animate(withDuration: 0.2) {
            self.answerLbl.alpha = 1
        }
        UIView.animate(withDuration: 0.5) {
            self.answerSubtitleLbl.alpha = 1
        }
    }
}

