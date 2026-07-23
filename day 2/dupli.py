num=[1,2,3,2,4,5,1,6,4]
dupli=[]
for i in num:
    if num.count(i)>1 and i not in dupli:
        dupli.append(i)
print("duplicates",dupli)