


class Solution {
  
   // with dictionary
    func numUniqueEmails(_ emails: [String]) -> Int {
        
      guard emails.count > 0 else { return 0}
      
      var dict:[String:Set<String>] = [:]
      
      for mail in emails {
        
        let atInd = mail.firstIndex(of:"@")!
        let domain = String(mail[mail.index(after:atInd)...])
        var val = String(mail[..<atInd])
        
        if let pInd = val.firstIndex(of:"+") {
          val = String(val[..<pInd])
        }
        
        val = val.filter{ $0 != "."}
        
        dict[domain,default:[]].insert(val)
      }
      return dict.map{$0.value}.reduce(0, { $0 + $1.count})
    }
    
    
    // With set
    func numUniqueEmails(_ emails: [String]) -> Int {
        
        guard emails.count > 0 else { return 0}
        
        var emailSet:Set<String> = []
        
         for mail in emails {
          
          let atInd = mail.firstIndex(of:"@")!
          let domain = String(mail[mail.index(after:atInd)...])
          var val = String(mail[..<atInd])
           
           if let pInd = val.firstIndex(of:"+") {
            val = String(val[..<pInd])
          }
           
           val = val.filter{ $0 != "."}
           
           emailSet.insert(val+"@"+domain)
         }
        
        return emailSet.count
      }
}