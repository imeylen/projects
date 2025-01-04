//
//  ViewController.swift
//  Counter
//
//  Created by Ivan on 04.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private var countNumber = 0
    
    private var currentDate: String {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
            return formatter.string(from: Date())
        }
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var PlusCountButton: UIButton!
    @IBOutlet weak var MinusCountButton: UIButton!
    @IBOutlet weak var resetCountButton: UIButton!
    @IBOutlet weak var editCountTextView: UITextView!
    
    @IBAction func AddCountButton(_ sender: Any) {
        countNumber += 1
        counterLabel.text = "Значение счётчика: \(countNumber)"
        editCountTextView.text += "\n\(currentDate): Значение изменено на +1"
    }
    
    @IBAction func subtractionCountButton(_ sender: Any) {
        if countNumber > 0 {
            countNumber -= 1
            counterLabel.text = "Значение счётчика: \(countNumber)"
            editCountTextView.text += "\n\(currentDate): Значение изменено на -1"
        } else {
            editCountTextView.text += "\n\(currentDate): Попытка уменьшить значение счётчика ниже 0"
        }
        
    }
    @IBAction func resetButton(_ sender: Any) {
        countNumber = 0
        editCountTextView.text = "История изменений:"
        editCountTextView.text += "\n\(currentDate): Значение сброшено"
        counterLabel.text = "Значение счётчика: \(countNumber)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

