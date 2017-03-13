//
//  ViewController.swift
//  ALSResearch
//
//  Created by arpitsabherwal on 12/03/17.
//  Copyright © 2017 arpitsabherwal. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func StartConsent(_ sender: Any) {
        
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil) // ConsentTask file is in Consent->ContestTask where all the task that need to completed are specified.
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
}
extension ViewController : ORKTaskViewControllerDelegate {
    
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        
        taskViewController.dismiss(animated: true, completion: nil)
        
        switch reason {
        case .completed:
            let vc : UIViewController! = self.storyboard!.instantiateViewController(withIdentifier: "taskListViewController")
            self.navigationController?.pushViewController(vc, animated: true)
            
        case .discarded, .failed, .saved :
            let vc : UIViewController! = self.storyboard!.instantiateViewController(withIdentifier: "startViewController")
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

