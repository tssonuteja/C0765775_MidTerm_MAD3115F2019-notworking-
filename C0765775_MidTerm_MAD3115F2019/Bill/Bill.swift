

import Foundation
class Bill:IDisplay{
    
    
    var billId : String?
    var billDate : String?
    var totalBillAmount : Float?
    enum billing {
        case Internet
       case Mobile
        case Hydro
    }
    
    var billType : billing?
    
    init(billId : String , billDate : String, billType : billing) {
        
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        
    }
    
    func iDisplay() {
        
    }
    
    
}
