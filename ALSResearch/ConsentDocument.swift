//
//  ConsentDocument.swift
//  ResearchKitNovartis
//
//  Created by arpitsabherwal on 16/03/16.
//  Copyright © 2016 arpitsabherwal. All rights reserved.
//


import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    /*
     The different type of Consents that can be used along with their details which are fetched from the model . You can add custom consents as well.
     */
    
    let consentDetail = ConsentDetails()
    let consentDocument = ORKConsentDocument()
    consentDocument.title = consentDetail.documentTitle
    
    let consentSectionTypes: [ORKConsentSectionType] = [
        .overview,
        .dataGathering,
        .privacy,
        .dataUse,
        .timeCommitment,
        .studySurvey,
        .studyTasks,
        .withdrawing
    ]
    
    let consentSections: [ORKConsentSection] = consentSectionTypes.map { contentSectionType in
        let consentSection = ORKConsentSection(type: contentSectionType)
        
        
        if consentSection.type == .overview {
            consentSection.summary = consentDetail.sectionTypeOverview.summary
            consentSection.content = consentDetail.sectionTypeOverview.content
            
        }
        
        if consentSection.type == .studySurvey {
            consentSection.summary = consentDetail.sectionTypeStudySurvey.summary
            consentSection.content = consentDetail.sectionTypeStudySurvey.content
        }
        
        if consentSection.type == .dataGathering {
            consentSection.summary = consentDetail.sectionTypeDataGathering.summary
            consentSection.content = consentDetail.sectionTypeDataGathering.content
        }
        
        if consentSection.type == .privacy {
            consentSection.summary = consentDetail.sectionTypePrivacy.summary
            consentSection.content = consentDetail.sectionTypePrivacy.content
        }
        
        if consentSection.type == .dataUse {
            consentSection.summary = consentDetail.sectionTypeDataUse.summary
            consentSection.content = consentDetail.sectionTypeDataUse.content
        }
        
        if consentSection.type == .timeCommitment {
            consentSection.summary = consentDetail.sectionTypeTimeCommitment.summary
            consentSection.content = consentDetail.sectionTypeTimeCommitment.content
        }
        
        if consentSection.type == .withdrawing {
            consentSection.summary = consentDetail.sectionTypeWithdrawing.summary
            consentSection.content = consentDetail.sectionTypeWithdrawing.content
        }
        if consentSection.type == .studyTasks {
            consentSection.summary = consentDetail.sectionTypeStudyTasks.summary
            consentSection.content = consentDetail.sectionTypeStudyTasks.content
        }
        return consentSection
    }
    consentDocument.sections = consentSections
    
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    return consentDocument
}
