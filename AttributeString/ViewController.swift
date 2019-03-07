//
//  ViewController.swift
//  AttributeString
//
//  Created by Pazhg on 12/16/1397 AP.
//  Copyright © 1397 Pazhg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelFirst: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // MARK: Label Attributes
        
        let dictionaryAttributeString : [ NSAttributedString.Key : Any ] = [NSAttributedString.Key.backgroundColor: UIColor.red]
        
        let attributeString : NSAttributedString = NSAttributedString.init(string: "This is my label with standard attributes!", attributes: dictionaryAttributeString )
        
        // Assign attributeString to labelFirst
        self.labelFirst.attributedText = attributeString
    
    }


}

