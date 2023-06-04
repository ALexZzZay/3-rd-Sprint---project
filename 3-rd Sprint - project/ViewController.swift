//
//  ViewController.swift
//  3-rd Sprint - project
//
//  Created by ALeXzZzAy on 03.06.23.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var historyView: UITextView!
    
    var count: Int = 0
    var date: Date = Date()
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelCount.text = "Значение счетчика: \n\(count)"
        labelCount.numberOfLines = 4
        labelCount.textAlignment = .center
        
        historyView.textColor = .black
    }
    
    @IBAction func incrementNumber(_ sender: Any) {
        count += 1
        
    labelCount.text = "Значение счетчика: \n\(count)"
    
    dateFormatter.dateFormat = "dd.MM.yy - HH:mm"
    var dateString = dateFormatter.string(from: date)
    
    historyView.text += "\n[\(dateString)]: Значение изменено на +1"
    let range = NSMakeRange(historyView.text.count - 1, 0)
    historyView.scrollRangeToVisible(range)
        
    }
    
    @IBAction func decrementNumber(_ sender: Any) {
        if count <= 0 {
            
        count += 0
            
        dateFormatter.dateFormat = "dd.MM.yy - HH:mm"
        var dateString = dateFormatter.string(from: date)
        
        historyView.text += "\n[\(dateString)]: Попытка уменьшить значение счётчика ниже 0"
        let range = NSMakeRange(historyView.text.count - 1, 0)
        historyView.scrollRangeToVisible(range)

    } else
        {
            count -= 1
        
        dateFormatter.dateFormat = "dd.MM.yy - HH:mm"
        var dateString = dateFormatter.string(from: date)
        
        historyView.text += "\n[\(dateString)]: Значение увеличилось на -1"
        let range = NSMakeRange(historyView.text.count - 1, 0)
        historyView.scrollRangeToVisible(range)
        
        }
        
        labelCount.text = "Значение счетчика: \n\(count)"
    }
    
    @IBAction func resetCount(_ sender: Any) {
        count = 0
        labelCount.text = "Значение счетчика: \n\(count)"
        
        dateFormatter.dateFormat = "dd.MM.yy - HH:mm"
        var dateString = dateFormatter.string(from: date)
        
        historyView.text += "\n[\(dateString)]: Значение сброшено"
        let range = NSMakeRange(historyView.text.count - 1, 0)
        historyView.scrollRangeToVisible(range)
        
    }
}

