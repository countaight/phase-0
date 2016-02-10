# Triangle Side

# I worked on this challenge with Jackie Feminella.


# Your Solution Below

def valid_triangle?(a, b, c)
	if (a > 0) && (b > 0) && (c > 0) 
  	if (a + b > c) && (a + c > b) && (c + b > a)
  			p true
  	end
  else
  	p false
  end
end