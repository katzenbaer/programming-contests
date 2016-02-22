op_parens = ['{', '(', '[']
ed_parens = ['}', ')', ']']
op_ed_map = dict(zip(op_parens, ed_parens))

num_tests = int(raw_input())
for _ in range(num_tests):
    expr = raw_input()
    stack = []
    matches = True
    for c in expr:
        if c in op_parens:
            # print("Added", c, "to stack")
            stack.append(c)
        elif c in ed_parens:
            if not stack:
                matches = False
                break
            popped = stack.pop()
            # print("popped", popped, "from stack")
            # print("Does", op_ed_map[popped], "match", c, "?")
            matches = (op_ed_map[popped] == c)
            # print("yes" if matches else "no")
            if not matches:
                break
        # else assert "Unexpected character %s" % c
    # print("stack:", stack)
    if stack:
        matches = False
    print 'YES' if matches else 'NO'

