def is_possible(xs, y):
  if not xs: return True
  else: return y > xs[-1]

def max(a, b):
  return a if len(a) >= len(b) else b

def LIS(cur, rem):
  if not rem:
    return cur 
  elif is_possible(cur, rem[0]):
    return max(LIS(cur, rem[1:]), LIS(cur + [rem[0]], rem[1:]))
  else:
    return LIS(cur, rem[1:])

t0 = [1, 2, 99, 4, 1]
t0_e = [1, 2, 4]

print(LIS([], t0) == t0_e)

