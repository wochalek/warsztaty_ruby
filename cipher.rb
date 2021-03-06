class Cipher

	def initialize(s, sp=" ")
		@sentence = s
		@splitter = sp
	end

	def perform
		tabret = []
		@sentence.split("").each do |x|
			nr = x.ord
			if(nr==32)
				tabret.push(@splitter)
				next
			end

			case nr
			when 90
				nr = 65
			when 122
				nr = 97
			else
				nr += 1
			end
			tabret.push(nr.chr)
		end
		print "#{@sentence} => #{tabret.join}\n"
	end

	def perform2
		tabret = []
		@sentence.split("").each do |x|
			nr = x.ord
			if(nr==32)
				tabret.push(@splitter)
				next
			end

			nr += 1
			case 
			when nr<=91
				temp = nr-65
				temp = temp%26
				nr = temp+65
			else
				temp = nr-97
				temp = temp%26
				nr = temp+97
			end
			tabret.push(nr.chr)
		end
		print "#{@sentence} => #{tabret.join}\n"
	end

	def perform3
		tabret = []
		@sentence.split("").each do |x|
			if(x==" ")
				tabret.push(@splitter)
				next
			end

			case x
			when "Z"
				tabret.push("A")
			when "z"
				tabret.push("a")
			else
				tabret.push((x.ord+1).chr)
			end
		end
		print "#{@sentence} => #{tabret.join}\n"
	end
end

time = Time.now
Cipher.new("kodowanie jest super").perform
Cipher.new("kodowanie jest super","#").perform
Cipher.new("az","#").perform
Cipher.new("KODOWANIE JEST SUPER").perform
Cipher.new("KODOWANIE JEST SUPER","$").perform
Cipher.new("AZ","#").perform
Cipher.new("","#").perform
print "duration: #{Time.now-time} s.\n"

time = Time.now
Cipher.new("kodowanie jest super").perform2
Cipher.new("kodowanie jest super","#").perform2
Cipher.new("az","#").perform2
Cipher.new("KODOWANIE JEST SUPER").perform2
Cipher.new("KODOWANIE JEST SUPER","$").perform2
Cipher.new("AZ","#").perform2
Cipher.new("","#").perform2
print "duration: #{Time.now-time} s.\n"

time = Time.now
Cipher.new("kodowanie jest super").perform3
Cipher.new("kodowanie jest super","#").perform3
Cipher.new("az","#").perform3
Cipher.new("KODOWANIE JEST SUPER").perform3
Cipher.new("KODOWANIE JEST SUPER","$").perform3
Cipher.new("AZ","#").perform3
Cipher.new("","#").perform3
print "duration: #{Time.now-time} s.\n"