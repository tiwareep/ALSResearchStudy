//
//  ConsentDetails.swift
//  ResearchKitNovartis
//
//  Created by arpitsabherwal on 16/03/16.
//  Copyright © 2016 arpitsabherwal. All rights reserved.
//

import Foundation

class ConsentDetails {
    
    /*
     The model for consent and making changes to this will make changes to the consent documents as well.
     */
    
    var documentTitle = ""
    var sectionTypeOverview = Overview()
    var sectionTypeDataGathering = DataGathering()
    var sectionTypePrivacy = Privacy()
    var sectionTypeDataUse = DataUse()
    var sectionTypeTimeCommitment = TimeCommitment()
    var sectionTypeStudySurvey = StudySurvey()
    var sectionTypeStudyTasks = StudyTasks()
    var sectionTypeWithdrawing = Withdrawing()
    var sectionTypeCustom = Custom()
    
    
    class Overview  {
        var summary = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        var content = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        var title = ""
        var image = ""
    }
    class DataGathering{
        var summary = "Data on this application is gathered for the purpose of helping ALS research. The data could however be used for any form of health research. Tapping Task is used to measure to one's active task and daily  Step Count is a passive task that is measured every day. "
        var content = "Data on this application is gathered for the purpose of helping ALS research. The data could however be used for any form of health research. Tapping Task is used to measure to one's active task and daily  Step Count is a passive task that is measured every day. "
        var title = ""
        var image = ""
    }
    class Privacy{
        var summary = "This privacy notice discloses the privacy practices for this application. This privacy notice applies solely to information collected by this I0S application. The data collected by this application can be used by the organization for the purposes of health research and will not be shared to any third party application. We take precautions to protect your information."
        var content = "This privacy notice discloses the privacy practices for this application. This privacy notice applies solely to information collected by this I0S application. The data collected by this application can be used by the organization for the purposes of health research and will not be shared to any third party application. We take precautions to protect your information."
        var title = ""
        var image = ""
    }
    class DataUse{
        var summary = "The data collected by this application belongs to the organization and to the user. User is able to utilize the data for any purpose. Data can be used by the organization for the purposes of health research and will not be shared to any third party application.  "
        var content = "The data collected by this application belongs to the organization and to the user. User is able to utilize the data for any purpose. Data can be used by the organization for the purposes of health research and will not be shared to any third party application.  "
        var title = ""
        var image = ""
    }
    class TimeCommitment{
        var summary = "In order to full benefit from the data collected, it is advised that the user performs active tasks once a day for at least 10 days and not delete the application during that time. Deletion of the application could result in data loss for both passive task and active task."
        var content = "In order to full benefit from the data collected, it is advised that the user performs active tasks once a day for at least 10 days and not delete the application during that time. Deletion of the application could result in data loss for both passive task and active task."
        var title = ""
        var image = ""
    }
    class StudySurvey{
        var summary = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        var content = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        var title = ""
        var image = ""
    }
    class StudyTasks{
        var summary = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        var content = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        var title = ""
        var image = ""
    }
    class Withdrawing{
       var summary = "Should you want to withdraw from using the application and would like the application to not have any of the collected data, email: pst37@cornell.edu."
        var content = "Should you want to withdraw from using the application and would like the application to not have any of the collected data, email: pst37@cornell.edu."
        var title = ""
        var image = ""
    }
    class Custom{
        var summary = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        var content = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        var title = ""
        var image = ""
    }
    
    
}
