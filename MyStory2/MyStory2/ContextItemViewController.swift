//
//  ContextItemViewController.swift
//  MyStory2
//
//  Created by Jose Ortiz on 3/1/23.
//

import UIKit

class ContextItemViewController: UIViewController {
    
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var ContextImage: UIImageView!
    var item : ContextItem?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ContextImage.image = item?.image
        text.text = item?.text
        // Do any additional setup after loading the view.
    }
    
    

    

}
