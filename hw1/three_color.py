import z3

'''
Arguments
    n: int - the number of nodes in the graph
    E: 2d intarray - an n x n matrix where E[i][j] = 1 if there is an edge between i and j
                     E must satisfy E[i][j] \implies E[j][i]
Returns
    bool - true if the graph is three-colorable, false otherwise
'''
def three_color(n, E):
    s = z3.Solver()
    P = [ [ z3.Bool (f'p{i}{j}') for j in range(3) ] for i in range(n) ]
    for i in range(n):
        s.add(z3.Or([P[i][0], P[i][1], P[i][2]]))
        s.add(z3.Implies(P[i][0], z3.Not(z3.Or(P[i][1], P[i][2]))))
        s.add(z3.Implies(P[i][1], z3.Not(z3.Or(P[i][0], P[i][2]))))
        s.add(z3.Implies(P[i][2], z3.Not(z3.Or(P[i][0], P[i][1]))))
    for i in range(n):
        for j in range(n):
            if E[i][j] == 1:
                s.add(z3.Implies(P[i][0], z3.Not(P[j][0])))
                s.add(z3.Implies(P[i][1], z3.Not(P[j][1])))
                s.add(z3.Implies(P[i][2], z3.Not(P[j][2])))
    return s.check().r == z3.Z3_L_TRUE
        
'''
these are example graphs
'''
print(three_color(4, [[0, 1, 1, 1], 
                      [1, 0, 1, 1], 
                      [1, 1, 0, 1], 
                      [1, 1, 1, 0]]))
print(three_color(5, [[0, 1, 1, 0, 0], 
                      [1, 0, 1, 1, 1], 
                      [1, 1, 0, 1, 1], 
                      [0, 1, 1, 0, 0], 
                      [0, 1, 1, 0, 0]]))


