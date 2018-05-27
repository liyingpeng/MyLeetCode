//Given an array of integers, find if the array contains any duplicates.
//
//Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
//
//Example 1:
//
//Input: [1,2,3,1]
//Output: true

// class Solution {
//     func containsDuplicate(_ nums: [Int]) -> Bool {
//         return nums.count > Set(nums).count
//     }
// }

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dic = [Int : Int]()
        for var i in nums {
            if (dic[nums[i]] != 1) {
                dic[nums[i]] = 1
            } else {
                return true
            }
        }
        return false
    }
}
