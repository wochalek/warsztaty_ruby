def time_diff(s,e)
	print "duration: #{e-s} s.\n"
end

print "============ I. Zadania na rozgrzewkę =============\n"
print "1.\n"
a = [2,5,6,10, 12, 15, 20, 21, 22, 25, 31, 34, 44, 42, 40, 100, 99, 67, 66]

#collect
print "a) collect\n"
time_s = Time.now()
b = a.collect{|x| x+1}
print "#{b} \n"
time_diff(time_s,Time.now())

#collect
print "\nb) map\n"
time_s = Time.now()
b = a.map{|x| x+1}
print "#{b} \n"
time_diff(time_s,Time.now())

#each
print "\nc) each\n"
time_s = Time.now()
b = []
a.each do |x|
	b.push(x+1)
end
print "#{b} \n"
time_diff(time_s,Time.now())
print "---------------------------------------------------\n"


print "2.\n"
a = [nil,nil,34,53,55,22,nil,3,nil,46]

#compact
print "a) compact\n"
time_s = Time.now()
b = a.compact
print "#{b} \n"
time_diff(time_s,Time.now())

#select
print "\nb) select\n"
time_s = Time.now()
b = a.select{|x| x!=nil} 
print "#{b} \n"
time_diff(time_s,Time.now())

#each
print "\nc) each\n"
time_s = Time.now()
b = []
a.each do |x| b.push(x) if x end
print "#{b} \n"
time_diff(time_s,Time.now())
print "---------------------------------------------------\n"


print "3.\n"
b = "kodowanie".split("")
print "#{b} \n"
print "---------------------------------------------------\n"


print "4.\n"
a = [1,12, 7, 9, 4]

#select
print "a) select\n"
time_s = Time.now()
b = a.select{|x| x%3==0} 
print "#{b} \n"
time_diff(time_s,Time.now())

#each
print "\nb) each\n"
time_s = Time.now()
b = []
a.each do |x| b.push(x) if x%3==0 end
print "#{b} \n"
time_diff(time_s,Time.now())
print "---------------------------------------------------\n"


print "5.\n"

#each x**2
print "a) each x**2\n"
time_s = Time.now()
b = []
(1...9).each do |x|
	b.unshift(2**x)
end
print "#{b} \n"
time_diff(time_s,Time.now())

#each with multiplication
print "\nb) each with multiplication\n"
time_s = Time.now()
b = []
y=2
(1...9).each do |x|
	b.unshift(y)
	y = y*2
end
print "#{b} \n"
time_diff(time_s,Time.now())

print "===================================================\n"