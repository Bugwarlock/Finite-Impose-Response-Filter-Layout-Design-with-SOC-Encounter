##in barname ba komak arman neveshte shode ast tozihate kamel nahveye amal kard in barname baraye raf copy dar gozaresh amade ast


expansion_Cycle = input("How Many Time Frame do you need to expand?")
counter_Example = input("How many counter example do you have?")
expansion_Cycle= int(expansion_Cycle)
counter_Example = int(counter_Example)
f = open('bug.v', 'r')
g = open('ready for debug.v', 'w')
l = "module debug("
for i in range(counter_Example):
    for j in range(expansion_Cycle):
        l = l + "A_" + str(i) + "_" + str(j) + ", "
        l = l + "B_" + str(i) + "_" + str(j) + ", "
        l = l + "S_" + str(i) + "_" + str(j) + ", "
for i in range(counter_Example):
    l = l + "Cin_" + str(i) + ", "
for i in range(counter_Example):
    if i != counter_Example - 1:
        l = l + "Cout_" + str(i) + ", "
    else:
        l = l + "Cout_" + str(i) + ");"
g.write(l + '\n')
g.write('\n')

l = "   input "
l1 = "   input "
l2 = "   output "
for i in range(counter_Example):
    for j in range(expansion_Cycle):
        if (i != counter_Example - 1) | (j != expansion_Cycle- 1):
            l = l + "A_" + str(i) + "_" + str(j) + ", "
            l1 = l1 + "B_" + str(i) + "_" + str(j) + ", "
            l2 = l2 + "S_" + str(i) + "_" + str(j) + ", "
        else:
            l = l + "A_" + str(i) + "_" + str(j) + ";"
            l1 = l1 + "B_" + str(i) + "_" + str(j) + ";"
            l2 = l2 + "S_" + str(i) + "_" + str(j) + ";"
g.write(l + '\n')
g.write(l1 + '\n')
g.write(l2 + '\n')

l1 = "   input "
l2 = "   output "
for i in range(counter_Example):
    if i != counter_Example - 1:
        l1 = l1 + "Cin_" + str(i) + ", "
        l2 = l2 + "Cout_" + str(i) + ", "
    else:
        l1 = l1 + "Cin_" + str(i) + ";"
        l2 = l2 + "Cout_" + str(i) + ";"
g.write(l1 + '\n')
g.write(l2 + '\n')

l = "   wire "
for i in range(counter_Example):
    for j in range(expansion_Cycle):
        for k in range(4):
            if (i != counter_Example - 1) | (j != expansion_Cycle- 1) | (k != 3):
                l = l + "W_" + str(i) + "_" + str(j) + "_" + str(k + 1) + ", "
            else:
                l = l + "W_" + str(i) + "_" + str(j) + "_" + str(k + 1) + ";"
g.write(l + '\n')

for i in range(counter_Example):
    for j in range(expansion_Cycle):
        l = "   GTECH_XOR2" + " u_" + str(i) + "_" + str(j) + "_1 (.A(" + "A_" + str(i) + "_" + str(j) + "), "
        l = l + ".B(" + "B_" + str(i) + "_" + str(j) + "), .Z(" + "W_" + str(i) + "_" + str(j) + "_1));"
        g.write(l + '\n')

for i in range(counter_Example):
    for j in range(expansion_Cycle):
        l = "   GTECH_AND2" + " u_" + str(i) + "_" + str(j) + "_2 (.A(" + "A_" + str(i) + "_" + str(j) + "), "
        l = l + ".B(" + "B_" + str(i) + "_" + str(j) + "), .Z(" + "W_" + str(i) + "_" + str(j) + "_2));"
        g.write(l + '\n')

for i in range(counter_Example):
    for j in range(expansion_Cycle):
        l = "   GTECH_AND2" + " u_" + str(i) + "_" + str(j) + "_3 (.A(" + "W_" + str(i) + "_" + str(j) + "_1), "
        if j == 0:
            l = l + ".B(" + "Cin_" + str(i) + "), .Z(" + "W_" + str(i) + "_" + str(j) + "_3));"
        else:
            l = l + ".B(" + "W_" + str(i) + "_" + str(j) + "_4), .Z(" + "W_" + str(i) + "_" + str(j) + "_3));"
        g.write(l + '\n')

for i in range(counter_Example):
    for j in range(expansion_Cycle):
        l = "   GTECH_XOR2" + " u_" + str(i) + "_" + str(j) + "_4 (.A("
        if j == 0:
            l = l + "Cin_" + str(i) + "), .B(" + "W_" + str(i) + "_" + str(j) + "_1), "
        else:
            l = l + "W_" + str(i) + "_" + str(j) + "_4), .B(" + "W_" + str(i) + "_" + str(j) + "_1), "
        l = l + ".Z(" + "S_" + str(i) + "_" + str(j) + "));"
        g.write(l + '\n')

for i in range(counter_Example):
    for j in range(expansion_Cycle):
        l = "   GTECH_AND2" + " u_" + str(i) + "_" + str(j) + "_5 (.A("
        l = l + "W_" + str(i) + "_" + str(j) + "_2), .B(" + "W_" + str(i) + "_" + str(j) + "_3), "
        if j == expansion_Cycle- 1:
            l = l + ".Z(" + "Cout_" + str(i) + "));"
        else:
            l = l + ".Z(" + "W_" + str(i) + "_" + str(j + 1) + "_4));"
        g.write(l + '\n')

g.write('\n' + "endmodule" + '\n')
f.close()
g.close()


