
import Foundation

var date = Date()
var res = date.dateformatter()
var custDictionary = Dictionary<String,Customers>()
var totalBill : Float

var net = Internet(providerName: "Fido", gbUsed: 26.5, billId: "M0FD1", billDate: res, billAmount: 100, billType: Bill.billing.Internet)

var m = Mobile(manufacturerName: "Samsung", plan: "Summer", mobileNumber: "4172396019", internetUsed: 1.3, minutesUsed: 900, billAmount: 180, billId: "MSAM2", billType:Bill.billing.Mobile, billDate: res)

var h = Hydro(agencyName: "e POWER", unitsConsumed: 201, billAmount: 400, billId: "ePwr2", billType: Bill.billing.Hydro, billDate: res)
var c = Customers(customerId: "C342", firstName: "Sai teja", lastName: "Sunkari", email: "tssonute@gmail.com", billingDictionary : [net.billId!:net,m.billId!:m,h.billId!:h])

var net1 = Internet(providerName: "bell", gbUsed: 12, billId: "B0bl1", billDate: res, billAmount: 98, billType: Bill.billing.Internet)

var h1 = Hydro(agencyName: "Thermal POWER", unitsConsumed: 20, billAmount: 100, billId: "Tpe2", billType: Bill.billing.Hydro, billDate: res)

var c1 = Customers(customerId: "C222", firstName: "Shank", lastName: "mitta", email: "saha123@gmail.com", billingDictionary : [net1.billId!:net1,m.billId!:m,h.billId!:h])
var c2 = Customers(customerId: "C242", firstName: "joe", lastName: "kunyan", email: "joeqw123@gmail.com", billingDictionary : [net1.billId!:net1,m.billId!:m,h.billId!:h])


custDictionary.updateValue(c, forKey: c.customerId!)
custDictionary.updateValue(c1, forKey: c1.customerId!)
custDictionary.updateValue(c2, forKey: c2.customerId!)


for i in custDictionary.values{
    i.iDisplay()
    
}

for temp in custDictionary.values{
    
    for net1 in temp.billingDictionary.values
    {
        
    }
}

for (k,v) in custDictionary{
    
    if(k == "C242")
    {
        v.iDisplay()
    }
    
}



