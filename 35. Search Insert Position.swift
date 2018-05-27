// 二分查找，可以看成计算 值小于给定键的 键的数量
// low 的值一直在增大，即便low == high 还是可以进入循环 +1 保证找不到的情况下，low的值一定是大于high
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    while (high >= low) {
        let mid = low + (high - low) / 2
        if (nums[mid] > target) {
            high = mid - 1
            continue
        } else if (nums[mid] < target) {
            low = mid + 1
            continue
        } else {
            return mid
        }
    }
    return low
}
