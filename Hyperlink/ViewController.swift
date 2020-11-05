//
//  ViewController.swift
//  Hyperlink
//
//  Created by Manoj Daswani on 5/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
        
    }

    func updateTextView() {
        let path = "https://wordpress.com/tos"
        let text = textView?.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Terms of Service")
        let font = textView.font
        textView.font = .preferredFont(forTextStyle: .body)
        let textColor = textView.textColor
        textView?.attributedText = attributedString
        textView.font = font
        textView.textColor = textColor
        
    }
}



