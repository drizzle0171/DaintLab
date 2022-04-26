class Solution:
    def dailyTemperatures(self, temperatures: List[int]) -> List[int]:
        stack = []
        result = [0]*len(temperatures)
        for i, current in enumerate(temperatures):
            while stack and current > temperatures[stack[-1]]:
                index = stack.pop()
                result[index] = i-index
            stack.append(i)            
        return result
