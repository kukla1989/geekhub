languages = {
    de: 'German',
	en: 'English',	 
	es: 'Spanish'
}
dictinary = {
    de: {one: 'eins', two: 'zwei', three: 'drei'},
    en: {one: 'one', two: 'two', three: 'three'},
    es: {one: 'uno', two: 'des', three: 'tres'}
}
puts "In German, #{dictinary[:de][:one]} means one, #{dictinary[:de][:two]} means two, #{dictinary[:de][:three]} means three}"
puts "In Spanish #{dictinary[:es][:one]} means one, #{dictinary[:es][:two]} means two, #{dictinary[:es][:three]} means three}"

#transfer hash into array
number_column = 0
number_column = dictinary.keys.count {|k| k.to_s.include?('')}
number_row = dictinary[:de].keys.count {|k| k.to_s.include?('')}
array = Array.new( 3 ){Array.new( number_row )}
array[0][0] = languages.key 'German'
array[1][0] = languages.key 'English'
array[2][0] = languages.key 'Spanish'
dictinary[:de].values.each_with_index { |el, index| array[0][index + 1] = el }
dictinary[:en].values.each_with_index { |el, index| array[1][index + 1] = el }
dictinary[:es].values.each_with_index { |el, index| array[2][index + 1] = el }

#create array with max length word in every column
max = 0
max_length = []
for i in 0..number_row do
    for j in 0..2 do
	    max = array[j][i].length if max < array[j][i].length
	end
	max_length.push max
	max = 0
end

for i in 0..2 do
    for j in 0..number_row do
		print "| #{array[i][j].to_s + ' ' * (max_length[j] - array[i][j].length)} "
	end
	print "|" 
	puts 
end





