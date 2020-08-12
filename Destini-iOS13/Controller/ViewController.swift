//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

var count = 0

var storyLife=Life()

var left=0
var leftpath:String?

var right=0
var rightpath:String?

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(choice: 0)

    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        var direction=sender.currentTitle!
        
        if(direction == leftpath!)
        {
//            print(left)
            updateUI(choice:left)
        }
        else
        {
//            print(right)
            updateUI(choice:right)
        }
    }
    
    func updateUI(choice:Int) {
        let ans :Story = (storyLife.nextStory(choice))
        
        storyLabel.text = ans.title
        choice1Button.setTitle(ans.choice1, for: .normal)
        choice2Button.setTitle(ans.choice2, for: .normal)
        left=ans.choice1Destination
        right=ans.choice2Destination
        
        leftpath = ans.choice1
        rightpath = ans.choice2
        
    }

}
