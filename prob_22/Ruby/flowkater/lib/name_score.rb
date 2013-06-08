class NameScore

	attr_accessor :names, :score

	def initialize
		@score = {"A" => 1,"B" => 2,"C" => 3,"D" => 4,"E" => 5,"F" => 6,"G" => 7,"H" => 8,"I" => 9,"J" => 10,"K" => 11,"L" => 12,"M" => 13,"N" => 14,"O" => 15,"P" => 16,"Q" => 17,"R" => 18,"S" => 19,"T" => 20,"U" => 21,"V" => 22,"W" => 23,"X" => 24,"Y" => 25,"Z" => 26}

		File.open("./lib/names.txt", 'r') do |f|
			@names = f.gets.gsub(/[\"]/, "").split(',')
		end
		@names.sort!
	end

	def name_score_sum(name, index)
		sum = 0
		name.split(//).each do |s|
			sum += score[s]
		end
		sum * index
	end

	def names_sum
		sum = 0
		@names.each_with_index do |name, i|
			sum += name_score_sum(name,i+1)
		end
		sum
	end
end