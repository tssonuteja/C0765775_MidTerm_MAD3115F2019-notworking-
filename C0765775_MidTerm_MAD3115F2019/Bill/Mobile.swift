

import Foundation
class Mobile:Bill{
    var manufacturerName:String?
    var plan:String?
    var mobileNumber:String?
    var internetUsed:Float?
    var minutesUsed:Int?
    var billAmount : Float?
    
    init(manufacturerName:String,plan:String,mobileNumber:String,internetUsed:Float,minutesUsed:Int,billAmount:Float,billId : String,billType : billing,billDate: String)
    {
        self.manufacturerName=manufacturerName
        self.plan=plan
        self.mobileNumber=mobileNumber
        self.internetUsed=internetUsed
        self.minutesUsed=minutesUsed
        self.billAmount=billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    
    override func iDisplay() {
        print("*******************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Manufacturer Name : \(manufacturerName)")
        print("Plan  Name : \(plan)")
        print("Mobile number : \( mobileNumber)")
        print("Minutes used : \( minutesUsed)")
        print("Bill Amount : \(billAmount)")
        print("Internet Used : \(internetUsed)")
        
    }
}
