
//
//  ConsentTask.swift
//  ResearchKitNovartis
//
//  Created by arpitsabherwal on 16/03/16.
//  Copyright © 2016 arpitsabherwal. All rights reserved.
//
import ResearchKit

public var ConsentTask: ORKOrderedTask {
    
    /*
     This class adds the different steps to the Task. Please visit the research kit website to know about the flow of the framework. That will help you understand this part better.
     */
    
    var steps = [ORKStep]()
    
    let consentDocument = ConsentDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    /*let consentSharing = ORKConsentSharingStep(identifier: "sharing", investigatorShortDescription: ConsentSharing().investigatorShortDescription, investigatorLongDescription: ConsentSharing().investigatorLongDescription, localizedLearnMoreHTMLContent: ConsentSharing().localizedLearnMoreHTMLContent)
    steps += [consentSharing]*/
    
    /*let signature = consentDocument.signatures!.first! as ORKConsentSignature
    
    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, in: consentDocument)
    
    reviewConsentStep.text = ReviewDetails().text
    reviewConsentStep.reasonForConsent = ReviewDetails().reasonForConsent
    
    steps += [reviewConsentStep]*/
    
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}
