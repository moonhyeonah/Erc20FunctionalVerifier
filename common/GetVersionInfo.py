import sys

args = sys.argv[1:]
#for i in args:
#    print(i)
sol_file = args[0]
js_file = args[1]

#file_target = open("Target.sol", 'r')
# file_target = open(sol_file, 'r')
# line = file_target.readline()
# file_target.close()
with open(sol_file, 'r') as file_target:
    for line in file_target:
        if (line.startswith('pragma')) :
            version_line = line
            break
#print(version_line)
pos = version_line.find('solidity')
tmp = version_line[pos+8:]
tmp = tmp.lstrip()
pos = tmp.find(';')
version = tmp[:pos]
#print(version)

#js_file = 'truffle-config.js'
with open(js_file, 'r+') as file:
    lines = []
    for line in file:
        if(line.startswith('version',line.find('version'))):
            pos = line.find('version')
            new_line = line[:pos+7] + ': "' + version + '",\n'
#            print(new_line)
            lines = lines + [new_line]
        else:
            lines = lines + [line]
    file.seek(0)
    file.writelines(lines)
