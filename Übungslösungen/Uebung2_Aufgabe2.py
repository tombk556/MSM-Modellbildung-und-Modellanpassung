import networkx as nx
import matplotlib.pyplot as plt
import numpy as np 
import sympy as sym

# ToDo Dateiarbeit

Knoten = ["I", "II", "III", "IV", "V", "VI"]
Kanten = [("I","II"), ("II","III"), ("III", "IV"), ("IV", "V"), ("V","VI"), ("VI", "I"), ("VI", "II"), ("II", "IV"), ("V", "II")]
Widerstand = [1, 1, 1, 1, 1, 1, 2, 2, 4]
Spannungsquellen = [0, 0, -2, 0, 0, 2, 0, 0, -4]
#Knoten = ["I", "II", "III", "IV", "V"]
#Kanten = [("I","II"), ("II","III"), ("III", "IV"), ("I", "IV"), ("IV","V"), ("V", "II")]
#Widerstand = [1, 1, 1, 1, 1, 1]
#Spannungsquellen = [-2, 0, 4, 0, 0, 0]

DG = nx.DiGraph()
DG.add_nodes_from(Knoten)   
DG.add_edges_from(Kanten)
nx.draw(DG, with_labels=True, font_weight='bold')

#Inzidenzmatrix
B = np.zeros((len(Kanten), len(Knoten)))
for idx, itemx in enumerate(Kanten):
    for idy, itemy in enumerate(Knoten):
        if Kanten[idx][0] == Knoten[idy]:
            B[idx][idy] = -1
        elif Kanten[idx][1] == Knoten[idy]:
            B[idx][idy] = 1
Btrans = B.transpose()

#Widerstand Diagnonalmatrix
C = np.zeros((len(Kanten),len(Kanten)))
for idx, itemx in enumerate(Widerstand):
    if itemx != 0:
        C[idx][idx] = 1/itemx 
    else:
        C[idx][idx] = 1 #Division durch 0 verhindern. Neutrales Element?

# #Spannungsquelle
b = np.zeros((len(Spannungsquellen),1))
for idx, itemx in enumerate(Spannungsquellen):
    b[idx][0] = itemx


Btrans_dot_C = np.matmul(B.transpose(), C)
Btrans_dot_C_dot_B= np.matmul(Btrans_dot_C, B)
BT=Btrans_dot_C_dot_B
Btrans_dot_b = np.matmul(B.transpose(), b)
Bb=Btrans_dot_b

g,h,i,j,k = sym.symbols("g,h,i,j,k")
eq1 = sym.Eq(BT[0][0]*g+BT[0][1]*h+BT[0][2]*i+BT[0][3]*j+BT[0][4]*k,Bb[0][0])
eq2 = sym.Eq(BT[1][0]*g+BT[1][1]*h+BT[1][2]*i+BT[1][3]*j+BT[1][4]*k,Bb[1][0])
eq3 = sym.Eq(BT[2][0]*g+BT[2][1]*h+BT[2][2]*i+BT[2][3]*j+BT[2][4]*k,Bb[2][0])
eq4 = sym.Eq(BT[3][0]*g+BT[3][1]*h+BT[3][2]*i+BT[3][3]*j+BT[3][4]*k,Bb[3][0])
eq5 = sym.Eq(BT[4][0]*g+BT[4][1]*h+BT[4][2]*i+BT[4][3]*j+BT[4][4]*k,Bb[4][0])
eq6 = sym.Eq(BT[5][0]*g+BT[5][1]*h+BT[5][2]*i+BT[5][3]*j+BT[5][4]*k,Bb[5][0])
result = sym.solve([eq1,eq2,eq3,eq4,eq5,eq6],(g,h,i,j,k))
print(result)
x = np.zeros((len(Knoten), 1))
dict_parse = {k: np.float64(v) for k, v in result.items()}
x[0][0] = dict_parse[g]
x[1][0] = dict_parse[h]
x[2][0] = dict_parse[i]
x[3][0] = dict_parse[j]
x[4][0] = dict_parse[k]
e = np.matmul(np.negative(B), x)
y = e + b


print("x ---------------")
print(x)
print("e ---------------")
print(e)
print("y ---------------")
print(y)

#elif len(Knoten) == 8:
#    g,h,i,j,k,l,m = sym.symbols("g,h,i,j,k,l,m")
#elif len(Knoten) == 9:
#    g,h,i,j,k,l,m,n = sym.symbols("g,h,i,j,k,l,m,n")

    
