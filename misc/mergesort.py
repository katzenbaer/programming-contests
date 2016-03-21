class Solution(object):
    def mergesort(self, xs):
        n = len(xs)
        if n <= 1: return xs

        pivot = n // 2
        fs = self.mergesort(xs[:pivot])
        ss = self.mergesort(xs[pivot:])

        res = []
        while len(fs) > 0 or len(ss) > 0:
            if not fs:
                res.append(ss.pop(0))
            elif not ss:
                res.append(fs.pop(0))
            elif fs[0] < ss[0]:
                res.append(fs.pop(0))
            else:
                res.append(ss.pop(0))
        return res

solution = Solution()

res = solution.quicksort([])
print res == []

res = solution.quicksort([6])
print res == [6]

res = solution.mergesort([6, 5, 3, 1, 8, 7, 2, 4])
print res == [1, 2, 3, 4, 5, 6, 7, 8]

res = solution.mergesort([8, 7, 6, 5, 4, 3, 2, 1])
print res == [1, 2, 3, 4, 5, 6, 7, 8]
