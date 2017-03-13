//
//  ActiveTasksViewController.swift
//  HealthTechApp
//
//  Created by arpitsabherwal on 09/03/17.
//  Copyright © 2017 arpitsabherwal. All rights reserved.
//

import UIKit
import ResearchKit
import CoreData
import MessageUI


class ActiveTasksViewController: UITableViewController,ORKTaskViewControllerDelegate,MFMailComposeViewControllerDelegate {
   
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if ((indexPath as NSIndexPath).row == 0){
            let taskViewController = ORKTaskViewController(task: FingerTappingTask, taskRun: nil)
            taskViewController.delegate = self
            
            present(taskViewController, animated: true, completion: nil)
        }
        else if ((indexPath as NSIndexPath).row == 1){
            let vc : UIViewController! = self.storyboard!.instantiateViewController(withIdentifier: "StepCount")
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if ((indexPath as NSIndexPath).row == 2){
            let vc : UIViewController! = self.storyboard!.instantiateViewController(withIdentifier: "StepCount")
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        print(taskViewController.result)
        //print(taskViewController.outputDirectory.)
        print("Results ");
        
        
            parseResult(step_result: (taskViewController.result.stepResult(forStepIdentifier: "tapping.right")?.results)!)
            parseResult(step_result: (taskViewController.result.stepResult(forStepIdentifier: "tapping.left")?.results)!)
        
        
        //saveData(step_result: taskViewController.result)
        
        taskViewController.dismiss(animated: true, completion: nil)
        
    }
    func parseResult(step_result:[ORKResult]){
        print("Parsed Result")
        
        for result in step_result{
            let r = result as! ORKTappingIntervalResult
            for sample in r.samples!{
                print(sample.buttonIdentifier.rawValue)
                print(sample.location)
                print(sample.timestamp)
                self.saveData(button: sample.buttonIdentifier.rawValue,location: sample.location,timestamp: sample.timestamp)
                
            }
            
        }
        /*var r=step_result as? ORKTappingIntervalResult
        r.
        step_result.result(forIden)
        let emailStepResult = result?.result(forIdentifier: ORKRegistrationFormItemIdentifierEmail) as? ORKTextQuestionResult*/
        
    }
    func saveData(button:Int,location:CGPoint,timestamp:Double){
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
                let managedContext =
            appDelegate.persistentContainer.viewContext
        
        
        let entity =
            NSEntityDescription.entity(forEntityName: "FingerTapping",
                                       in: managedContext)!
        
        let data_values = NSManagedObject(entity: entity,
                                     insertInto: managedContext)
        
        
        
        data_values.setValue(String(describing: NSDate()), forKeyPath: "date")
        data_values.setValue(String(describing: button),forKeyPath:"button")
        data_values.setValue(String(describing: location),forKeyPath:"location")
        data_values.setValue(String(describing: timestamp),forKeyPath:"timestamp")
        
        
        do {
            try managedContext.save()
            print("Saved")
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
}

