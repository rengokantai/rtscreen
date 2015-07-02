# Array literals
#system "ln -s file1 file2"
#==
#system "ln","-s","file1","file2"

#OR

command = ["ln"]
options = ["-s"]
arguments = ["file1 file2"]

system *(command + options + arguments)

#OR
c = %W[-h]
o = %W[-s]
a = %W[file1 file2]

final = c + o + s

system "ln", *final