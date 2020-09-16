##barname zir ba komak arman neveshte shode ast va bande tasalote kamel be an ra daram
ex = input("What is number of expansion cycles?")
cx = input("What is number of counter examples?")
ex = int(ex)
cx = int(cx)
f = open('debug.v', 'r')
g = open('sat.v', 'w')
for line in f:
    s = line.split()
    if len(s) > 0:
        if (s[0] != "GTECH_XOR2") & (s[0] != "GTECH_AND2") & (s[0] != "wire") & (s[0] != "module"):
            g.write(line)
        if s[0] == "module":
            l = "module sat("
            for i in range(cx):
                for j in range(ex):
                    l = l + "A_" + str(i) + "_" + str(j) + ", "
            l = l + '\n           '
            for i in range(cx):
                for j in range(ex):
                    l = l + "B_" + str(i) + "_" + str(j) + ", "
            l = l + '\n           '
            for i in range(cx):
                for j in range(ex):
                    l = l + "S_" + str(i) + "_" + str(j) + ", "
            l = l + '\n           '
            for i in range(cx):
                for j in range(ex):
                    for k in range(5):
                        l = l + "V_" + str(i) + "_" + str(j) + "_" + str(k + 1) + ", "
            l = l + '\n           '
            for i in range(cx):
                for j in range(ex):
                    l = l + "Q_" + str(i) + "_" + str(j) + ", "
            l = l + '\n           '
            for i in range(ex):
                for j in range(5):
                    l = l + "sel_" + str(i) + "_" + str(j + 1) + ", "
            l = l + '\n          '
            for i in range(cx):
                l = l + "Cin_" + str(i) + ", Cout_" + str(i) + ", Dout_" + str(i) + ", "
            l = l + "sel_Cout);" + '\n'
            g.write(l + '\n')
        if s[0] == "wire":
            l = "   wire "
            for i in range(1, len(s)):
                if i != len(s) - 1:
                    l = l + s[i][:s[i].find(',')] + "_m, " + s[i][:s[i].find(',')] + ", "
                else:
                    l = l + s[i][:s[i].find(';')] + "_m, " + s[i][:s[i].find(',')] + "; "
            g.write(l + '\n')
            l = "   input "
            for i in range(cx):
                for j in range(ex):
                    for k in range(5):
                        if (i != cx - 1) | (j != ex - 1) | (k != 4):
                            l = l + "V_" + str(i) + "_" + str(j) + "_" + str(k + 1) + ", "
                        else:
                                l = l + "V_" + str(i) + "_" + str(j) + "_" + str(k + 1) + ";"
            g.write(l + '\n')
            l = "   wire "
            for i in range(cx):
                for j in range(ex):
                    if (i != cx - 1) | (j != ex - 1):
                        l = l + "S_" + str(i) + "_" + str(j) + "_m, "
                    else:
                        l = l + "S_" + str(i) + "_" + str(j) + "_m;"
            g.write(l + '\n')
            l = "   input "
            for i in range(cx):
                for j in range(ex):
                    if (i != cx - 1) | (j != ex - 1):
                        l = l + "Q_" + str(i) + "_" + str(j) + ", "
                    else:
                        l = l + "Q_" + str(i) + "_" + str(j) + ";"
            g.write(l + '\n')
            l = "   input "
            for i in range(ex):
                for j in range(5):
                    if (i != ex - 1) | (j != 4):
                        l = l + "sel_" + str(i) + "_" + str(j + 1) + ", "
                    else:
                        l = l + "sel_" + str(i) + "_" + str(j + 1) + ";"
            g.write(l + '\n')
            l = "   input "
            for i in range(cx):
                if i < cx -1:
                    l = l + "Dout_" + str(i) + ", "
                else:
                    l = l + "Dout_" + str(i) + ";"
            g.write(l + '\n')
            l = "   wire "
            for i in range(cx):
                if i < cx -1:
                    l = l + "Cout_" + str(i) + "_m, "
                else:
                    l = l + "Cout_" + str(i) + "_m;"
            g.write(l + '\n')
            l = "   input sel_Cout;"
            g.write(l + '\n')
        if (s[0] == "GTECH_XOR2") | (s[0] == "GTECH_AND2"):
            p = s[4].find(')')
            l = "   " + s[0] + " " + s[1] + " " + s[2] + " " + s[3] + " "
            l = l + s[4][:p] + "_m" + s[4][p:]
            g.write(l + '\n')
            q = s[4].find('(')
            l = "   GTECH_MUX2 m" + s[1][1:] + " (.A(" + s[4][q + 1:p] + "_m), .B("
            if s[4].find('W') > -1:
                q = s[4].find('W')
                l = l + "V" + s[4][q + 1:p] + "), .S(sel" + s[1][3:] + "), " + s[4]
            if s[4].find('S') > -1:
                q = s[4].find('S')
                l = l + "Q" + s[4][q + 1:p] + "), .S(sel" + s[1][3:] + "), " + s[4]
            if s[4].find("Cout") > -1:
                q = s[4].find('C')
                l = l + "D" + s[4][q + 1:p] + "), .S(sel_Cout), " + s[4]
            g.write(l + '\n')
f.close()
g.close()