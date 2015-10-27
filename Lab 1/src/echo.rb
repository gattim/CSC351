=begin
  Echo Program
  by Stuart C. Shapiro
  To demonstrate the writing and running of a Ruby program.
  To run this program:
    Typy ruby echo.rb

  Repeats the following:
    print a numbered prompt;
    read something;
    echo 'I read --><whatever was read><--'
  until the thing read is the symbol bye.
=end

def echo()
  puts "Ruby Echo"
  puts "Type something to each prompt."
  puts "Type bye to quit.\n\n"
  n = 1
  while true
    print "#{n}: "
    input = gets.chomp
    if input == "bye"
      break
    end
    puts "I read -->#{input}<--"
    n += 1
  end
  puts "Good bye."
end

echo()

