class Solution(object):
    def quicksort(self, xs):
        """
        Naive quicksort implementation.
        """
        if not xs:
            return []
        pivot = xs[0]
        left = [x for x in xs[1:] if x <= pivot]
        right = [x for x in xs[1:] if x > pivot]

        return self.quicksort(left) + [pivot] + self.quicksort(right)

solution = Solution()

res = solution.quicksort([])
print res == []

res = solution.quicksort([6])
print res == [6]

res = solution.quicksort([6, 5, 3, 1, 8, 7, 2, 4])
print res == [1, 2, 3, 4, 5, 6, 7, 8]

res = solution.quicksort([8, 7, 6, 5, 4, 3, 2, 1])
print res == [1, 2, 3, 4, 5, 6, 7, 8]
