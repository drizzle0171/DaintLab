from sqlalchemy import false, true


temperatures = [73, 74, 75, 71, 69, 72, 76, 73]
def dailyTemperatures(temperatures):
        stack = []
        result = [0]*len(temperatures)
        for i, current in enumerate(temperatures):
            while stack and current > temperatures[stack[-1]]:
                print(stack, stack[-1], temperatures[stack[-1]])
                index = stack.pop()
                result[index] = i-index
            stack.append(i)            
        return result
print(dailyTemperatures(temperatures))
print([]==False)