//
//  PracticeModelClass.swift
//  Covid-19
//
//  Created by monica s b on 21/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import Foundation



struct PracticeModelClass  {
    
    
    var academic : Academic?
    var activeStatus : String?
//    var address : Address?
    var candidateID : String?
    var candidateTypeID : String?
    var clientID : String?
    var colurCode : AnyObject?
    var emailID : String?
    var firstName : String?
    var isBrowser : Bool?
    var isDesktop : Bool?
    var lastName : String?
    var logoImageURL : AnyObject?
    var logoStatus : Int?
    var logRecorded : String?
    var message : String?
    var mobileNo : String?
    var profilePic : String?
    var result : String?
    var roleID : Int?
    var status : AnyObject?
    var theamName : AnyObject?
    var token : String?
    var verifyEmailSent : AnyObject?
    

    init(dict:[String:Any]) {
        if let academicValue = dict["Academic"] as? [String] {
            print("####")
        }
        activeStatus = dict["ActiveStatus"] as? String
        candidateID = dict["CandidateID"] as? String
        clientID = dict["ClientID"] as? String
        colurCode = dict["ColurCode"] as? AnyObject
        emailID = dict["EmailID"] as? String
        firstName = dict["FirstName"] as? String
        isBrowser = dict["IsBrowser"] as? Bool
        isDesktop = dict["IsDesktop"] as? Bool
        lastName = dict["LastName"] as? String
        logoImageURL = dict["LogoImageURL"] as? AnyObject
        logoStatus = dict["LogoStatus"] as? Int
        logRecorded = dict["LogRecorded"] as? String
        message = dict["Message"] as? String
        mobileNo = dict["MobileNo"] as? String
        profilePic = dict["ProfilePic"] as? String
        result = dict["Result"] as? String
        roleID = dict["RoleID"] as? Int
        status = dict["Status"] as? AnyObject
        theamName = dict["TheamName"] as? AnyObject
        token = dict["Token"] as? String
        verifyEmailSent = dict["VerifyEmailSent"] as? AnyObject

    }
}

struct Academic  {
    
    let campusID : String?
    let campusName : String?
    let courseID : String?
    let courseName : String?
    let departmentID : String?
    let departmentName : String?
    let subjectID : String?
    let subjectName : String?
    let universityID : String?
    let universityName : String?
    
    init(dict:[String:Any]) {
        campusID = dict["CampusID"] as? String
        campusName = dict["CampusName"] as? String
        courseID = dict["CourseID"] as? String
        courseName = dict["CourseName"] as? String
        departmentID = dict["DepartmentID"] as? String
        departmentName = dict["DepartmentName"] as? String
        subjectID = dict["SubjectID"] as? String
        subjectName = dict["SubjectName"] as? String
        universityID = dict["UniversityID"] as? String
        universityName = dict["UniversityName"] as? String
      
        
    }
    
}
