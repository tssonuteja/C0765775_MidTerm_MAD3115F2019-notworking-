

import Foundation
class Customers:IDisplay{
    
    
    
    
    var customerId : String?
    var firstName: String?
    var lastName: String?
    var fullName: String?
    var email: String?
    
    var billingDictionary = Dictionary<String,Bill>()
   
    init(customerId : String, firstName : String, lastName : String, email : String ,billingDictionary : Dictionary<String,Bill>)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.billingDictionary = billingDictionary
        self.fullName = firstName + lastName
        
    }
    
    
    func iDisplay() {
        print("***************************************")
        print("Customer Id : \(customerId)")
        print("Full Name : \(fullName)")
        for i in billingDictionary.values
        {
            i.iDisplay()
        }
        
        
    }
}
