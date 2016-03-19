# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs. This is making the coded message lower case and splitting each letter into an array.
#   decoded_sentence = [] # This is opening an empty array for a list.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? The hash is too large to be kept neatly. Pro: it's easy to iterate and call the values through the keys. Applying a mathematical algorithm on the index of an array holding all the letters would do the same thing.
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? For every letter inside the inital coded message...
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     cipher.each_key do |y| # What is #each_key doing here? Taking the value of each key.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? This is comparing the token from the each loop to the token in the cipher hash.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? This will prevent the rest of the condition from continuing.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? Checking to see if it's anyone of those symbols.
#         decoded_sentence << " " # A space is inserted
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? Creates an array with the number 0-9 as separate elements.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? This will run as long as found_match is false
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? I will returned the joined sentence
# end

# Your Refactored Solution
class Cipher
  attr_accessor :shift
  def initialize(message, shift)
    @message = message.downcase
    @shift = shift
    @alphabet_array = ("abcdefghijklmnopqrstuvwxyz"*2).split("")
    @symbols_array = "@#$%^&*".split("")
  end

  def encode
    encoded_array = @message.split("").map do |letter|
      if @alphabet_array.include?(letter)
        @alphabet_array[@alphabet_array.index(letter)+shift]
      elsif letter == " "
        @symbols_array[rand(0..7)]
      else
        letter
      end
    end
    join_message(encoded_array)
  end

  def decode
    decoded_array = @message.split("").map do |letter|
      if @alphabet_array.include?(letter)
        @alphabet_array[@alphabet_array.index(letter)-shift]
      elsif @symbols_array.include?(letter)
        " "
      else
        letter
      end
    end
    join_message(decoded_array)
  end

  def join_message(array)
    array.join("")
  end

  # def dr_evils_cipher(shift)
  #   coded_array = @message.downcase.split("")
  #   self.letter_converter(coded_array, shift)
  #   symbols_array = "@#$%^&*".split("")
  #   decoded_sentece = decoded_array.join("")
  # end

end

def dr_evils_cipher(message, shift=4) # Using the class to create a method to pass the tests. Shift is a default of 4, but can be changed
  message = Cipher.new(message, shift)
  message.decode
end

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"


# Reflection
# Keep your reflection limited to 10-15 minutes!

=begin
  
What concepts did you review in this challenge?

- Refactoring and using best practices. Also by doing the optional challenge using object-oriented concepts, like creating classes to make the program more modular.


What is still confusing to you about Ruby?

- During my class creation I was wondering how to hide the inspect message that comes out when you first create the object. It reveals too much information in my opinion. Trying to shift from using variables to using method calls instead, still not sure how to do that to its full potential.


What are you going to study to get more prepared for Phase 1?

- I might have to look more into using self in classes, best practices for methods sharing arguments. It might also be interesting to look at encryption methods.
  
=end
