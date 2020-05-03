
class Solution : VersionControl {
    
  func firstBadVersion(_ n: Int) -> Int {
    
    guard n > 1 else {
      return self.isBadVersion(n) ? 1 : -1
    }
    
    var left = 1
    var right = n
    var res = 0
    while left <= right {
      let mid = (left + right) / 2
      if self.isBadVersion(mid)  {
        right = mid - 1
      } else {
        left = mid + 1
      }
    }
    
    
    return left
    
  }
}
