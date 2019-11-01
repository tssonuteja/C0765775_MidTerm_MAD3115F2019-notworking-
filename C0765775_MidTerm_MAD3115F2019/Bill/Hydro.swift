
import Foundation
class Hydro: Bill{
    
    var agencyName:String?
    var unitsConsumed: Float?
    var billAmount : Float?
    
    init(agencyName:String,unitsConsumed:Float,billAmount : Float,billId : String,billType : Bill.billing,billDate : String)
    {
        self.agencyName=agencyName
        self.unitsConsumed=unitsConsumed
        self.billAmount=billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
        
    }
    
    
    override func iDisplay() {
        print("*****************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Agency Name : \(agencyName)")
        print("Unit Consumed : \(unitsConsumed)")
        print("Bill Amount : \(billAmount)")
    }
}
