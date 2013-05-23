# http://en.wikipedia.org/wiki/English_numerals
class English
	def convert(n)
		h = {1=>"one", 2=>"two",3=>"three", 
			4=>"four",5=>"five", 6=>"six",
			7=>"seven", 8=>"eight",9=>"nine",10=>"ten",
			11=>"eleven", 12=>"twelve",13=>"thirteen",
			14=>"fourteen",15=>"fifteen", 16=>"sixteen",
			17=>"seventeen", 18=>"eighteen", 19=>"nineteen",
			20=>"twenty",30=>"thirty", 40=>"forty",50=>"fifty",
			60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety", 
			100=>"hundred", 1000=>"one thousand"}
		if n > 20 && n < 100
			a = n.to_s
			return "#{h[a[0].to_i*10]}-#{h[a[1].to_i]}"
		elsif n > 99 && n < 1000
			a = n.to_s
			str = "#{ h[ a[0].to_i ] } #{h[100]}"

			unless n - a[0].to_i * 100 == 0
				str += " and " + convert(a[1,2].to_i)
			end
			return str
		end
		h[n]
	end

	def count(n)
		convert(n).gsub(/\s+|-/,"").length
	end

	def tonum(n)
		sum = 0
		(1..n).each{|x| sum += count(x)}
		sum
	end
end


