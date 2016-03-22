class Solution(object):
    def __init__(self):
        self.memo = {
            0: 0,
            1: 1
        }

    def fib(self, n):
        if n in self.memo:
            return self.memo[n]
        else:
            res = self.fib(n - 1) + self.fib(n - 2)
            self.memo[n] = res
            return res

solution = Solution()

res = solution.fib(0)
print res == 0

res = solution.fib(1)
print res == 1

res = solution.fib(4)
print res == 3

res = solution.fib(42)
print res == 267914296

