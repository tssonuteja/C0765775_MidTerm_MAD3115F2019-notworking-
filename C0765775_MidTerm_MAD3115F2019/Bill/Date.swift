

import Foundation
extension Date
{
    
    func dateformatter() -> String {
        let dateFormatterPrint=DateFormatter()
        dateFormatterPrint.dateFormat="EEEE, dd MM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
        
    }
}
    
    

