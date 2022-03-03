//
//  RegistrationViewModel.swift
//  FireChat
//
//  Created by Sabir Myrzaev on 27/2/22.
//

import Foundation

protocol AuthenticationProtocol {
    var formIsValid:Bool { get }
}

struct RegistrationViewModel:AuthenticationProtocol {
    var email:String?
    var password:String?
    var fullname:String?
    var username:String?
    
    var formIsValid:Bool {
        // Only returns true if both email and password are not empty
        return email?.isEmpty == false
            && password?.isEmpty == false
            && fullname?.isEmpty == false
            && username?.isEmpty == false
    }
}
