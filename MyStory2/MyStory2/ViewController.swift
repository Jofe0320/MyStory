//
//  ViewController.swift
//  MyStory2
//
//  Created by Jose Ortiz on 3/1/23.
//

import UIKit

class ViewController: UIViewController {
    let backStory = ContextItem(image: UIImage(named: "aguja")!, title: "Who am I?", text: "Well, I'm Dr. Gregory House, a diagnostician and a medical genius, but I don't think that's what you're really asking. You're probably wondering about my identity beyond my profession.I'm defined by my actions and my ability to solve complex medical cases that other doctors can't. Some might say that my personality is defined by my caustic wit and my tendency to break rules, but I think that's just a surface-level analysis. My true identity is something that's impossible to define or categorize, even for me. All I know is that I'm driven to solve medical mysteries and I won't let anything or anyone stand in my way.")
    let DrugAddiction = ContextItem(image:UIImage(named:"HouseDrug")!,title: "Drug Addiction",text:"Well, I suppose if you're looking for an explanation for my drug addiction, it's really quite simple. I suffer from chronic pain due to a leg injury that never fully healed. The pain is always there, gnawing at me, making it hard to concentrate, to sleep, to function. The only thing that helps me manage the pain is medication.Of course, the problem with pain medication is that it's highly addictive. Over time, I developed a tolerance to the drugs and needed more and more to get the same relief. Eventually, I found myself in a cycle of addiction, where I needed the medication to manage the pain, but the medication was also causing me harm.")
    let Quote = ContextItem(image:UIImage(named:"HouseBaston")!,title: "Best Quote",text:"I've found that when you want to know the truth about someone that someone is probably the last person you should ask.")
    

    @IBOutlet weak var WhoAmIButton: UIButton!
    
    @IBOutlet weak var AddictionButton: UIButton!
    
    @IBOutlet weak var QuoteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ContextItemViewController") as! ContextItemViewController
        if sender == WhoAmIButton{
            vc.item = backStory
        }else if  sender == AddictionButton{
            vc.item = DrugAddiction
        }else{
            vc.item = Quote
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

