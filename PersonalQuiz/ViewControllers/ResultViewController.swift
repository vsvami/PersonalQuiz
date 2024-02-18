//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 12.02.2024.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var animalDescriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let animalCounts = answers.reduce(into: [:]) { counts, answer in
            counts[answer.animal, default: 0] += 1
        }
        
        let sortedAnimalCounts = animalCounts.sorted { $0.value > $1.value }
        
        if let currentAnimal = sortedAnimalCounts.first?.key {
            animalLabel.text = "Вы - \(currentAnimal.rawValue)"
            animalDescriptionLabel.text = currentAnimal.definition
        }
    }
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
