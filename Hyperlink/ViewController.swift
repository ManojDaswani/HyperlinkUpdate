//
//  ViewController.swift
//  Hyperlink
//
//  Created by Manoj Daswani on 5/11/20.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var textView: UITextView!
    var text: String!
    var font: UIFont?
    var textColor: UIColor?



    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
        
    }

    //updated
    func updateTextView() {
        let path = "https://wordpress.com/tos"
        let text = textView?.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Terms of Service")
        let font = textView.font
        let textColor = textView.textColor
        textView?.attributedText = attributedString
        textView.font = font
        textView.textColor = textColor
        
    }
}



