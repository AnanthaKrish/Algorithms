class Solution {
    
  func numJewelsInStones(_ J: String, _ S: String) -> Int {
    
    guard J.count > 0 , S.count > 0 else { return 0}
    
    var res = 0
    //var dict:[Character:Int] = [:]
    var setV:Set<Character> = []
    for e in J {
      //dict[e,default:0] += 1
      setV.insert(e)
    }
    
    for e in S where setV.contains(e){
      res += 1
      // if let val = dict[e] {
      //   res += val
      // }
    }
    return res
  }
}