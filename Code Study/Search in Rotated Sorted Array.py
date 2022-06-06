class Solution:
    def search(self, nums, target):
        if target in nums:
            return nums.index(target)
        else:
            return -1
answer = Solution()
answer.search([4,5,6,7,0,1,2], 0)