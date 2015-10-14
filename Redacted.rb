puts "Please enter your input: "
text = gets.chomp
puts "Please enter the word you wish to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
end
end