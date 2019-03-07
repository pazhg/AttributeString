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
    
    @IBOutlet weak var labelSecond: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // MARK: First Label Attributes
        let dictionaryAttributeString : [ NSAttributedString.Key : Any ] = [NSAttributedString.Key.backgroundColor: UIColor.red]
        
        let attributeString : NSAttributedString = NSAttributedString.init(string: "This is my first label with standard attributes!", attributes: dictionaryAttributeString )
        // Assign attributeString to labelFirst
        self.labelFirst.attributedText = attributeString
        
        
        
        
        // MARK: Second Label Atributes ( MutableAttributes )
        let str : String = "This is my second label with standard mutable attributes!"
        let secondAttributeString : NSMutableAttributedString = NSMutableAttributedString.init(string: str)
        
        // NSRange gives us two parameters : Length & Location ;)
        // NSMakeRange generate a NSRange
        // This type of assigning parameters to NSRange is static
        let range : NSRange = NSMakeRange( 0, "This is my second label".count )
        
        let attribute : [NSAttributedString.Key : Any] = [NSAttributedString.Key.foregroundColor : UIColor.red]
        secondAttributeString.addAttributes(attribute, range: range)
        
        
        //Assign attributes to labelSecond
        self.labelSecond.attributedText = secondAttributeString as NSAttributedString
    
    }


}

