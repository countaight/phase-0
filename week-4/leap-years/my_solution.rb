# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(year)
	if (year % 4 == 0)
		if year < 100
			p true
		else
			if (year % 100 != 0) || (year % 400 == 0)
				p true
			else
				p false
			end
		end
	else
		p false
	end
end