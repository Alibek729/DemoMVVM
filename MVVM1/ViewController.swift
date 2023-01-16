//
//  ViewController.swift
//  MVVM1
//
//  Created by Alibek Kozhambekov on 16.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var secondName: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    var viewModel: ViewModel! = ViewModel() {
        didSet {
            self.nameLabel.text = viewModel?.name
            self.secondName.text = viewModel?.secondName
            self.ageLabel.text = viewModel?.age
        }
    }
    
//    var profile: Profile? {
//        didSet {
//            guard let profile = profile else { return }
//
//            self.nameLabel.text = profile.name
//            self.secondName.text = profile.secondName
//            self.ageLabel.text = "\(profile.age)"
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        //profile = Profile(name: "John", secondName: "Smith", age: 33)
    }


}

