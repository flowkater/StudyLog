w=[1 for i in range(201)]
p=[2,5,10,20,50,100,200]

for c in p:
    for i in range(c,201):
      w[i]+=w[i-c]

print w[-1]