def get_n_stars (n)
	stars = ''
    for i in 1..n do
	    stars += '*'
	end
	stars
end

number = [
    [1, 2, 3],
	[2, 2, 2],
	[3, 2, 1]
]
lines = []
line = ""
for i in 0..2 do
    for j in 0.. 2 do
	    line += get_n_stars number[i][j]
		line += " " 
	end
	lines.push line
	line = ""
end




lines.each {|line| puts line }
