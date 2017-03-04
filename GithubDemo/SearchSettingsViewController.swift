//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Pratyush Thapa on 3/3/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: Int)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController {
    weak var delegate: SettingsPresentingViewControllerDelegate?

    @IBOutlet weak var minStarsSlider: UISlider!
    @IBOutlet weak var minStarsLabel: UILabel!
    var minStars: Int!
    var copyMinStars: Int!

    override func viewDidLoad() {
        navigationItem.titleView?.tintColor = .white
        super.viewDidLoad()
        minStarsLabel.text = "\(minStars!)"
        copyMinStars = minStars
        
        minStarsSlider.value = Float(minStars!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSliderChanged(_ sender: UISlider) {
        copyMinStars = Int(sender.value)
        minStarsLabel.text = "\(copyMinStars!)"
        print(copyMinStars)
    }
    
    @IBAction func onCancelPressed(_ sender: Any) {
        self.delegate?.didCancelSettings()
        dismiss(animated: true, completion: nil)
    }

    @IBAction func onSavePressed(_ sender: Any) {
        self.minStars = copyMinStars
        self.delegate?.didSaveSettings(settings: copyMinStars!)
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
