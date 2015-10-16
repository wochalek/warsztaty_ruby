class Cipher

	def initialize(s, sp=" ")
		@sentence = s
		@splitter = sp
	end

	def perform()
		tab = @sentence.split("");
		tabret = []
		tab.each do |x|
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
			#print "#{x} -> #{nr}\n"
		end
		print "#{@sentence} => #{tabret.join}\n"
	end
end

Cipher.new("kodowanie jest super").perform
Cipher.new("kodowanie jest super","#").perform
Cipher.new("az","#").perform
Cipher.new("KODOWANIE JEST SUPER").perform
Cipher.new("KODOWANIE JEST SUPER","$").perform
Cipher.new("AZ","#").perform