
import csv

listOfList0 = []

with open('data.csv',encoding='euc-kr') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
#        print(row)
        listOfList0.append(row)

# For debugging
# print()
# print(listOfList0)

listOfList1 = []

for list in listOfList0:
    list1 = []
    for elem in list:
        strList = elem.split()
        if len(strList) == 0:
            list1.append('')
        else:
            list1.append(strList[0])
        
    listOfList1.append(list1)

# For debugging
# print()
# print(listOfList1)

def resultFn(list):
    return list[1:len(list)]

listOfList1.sort(key=resultFn)

listOfList2 = []
for list in listOfList1:
    list1 = []
    name = list[0]
    for i in range(1,10-len(name)): # 10 the maximum length of names
        name = name + ' '
    list1.append(name)
    list1 = list1 + list[1:len(list)]
    listOfList2.append(list1)

print()
print('Sorted result')

count = 0
prevRes = []
for list in listOfList2:
    print(list[0], end=' ')
    if prevRes == list[1:len(list)]:
        print()
    else:
        count = count + 1
        prevRes = list[1:len(list)]
        print(list[1:len(list)])        

print()
print("# of groups: " + str(count))

