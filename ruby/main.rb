# ruby algorithm

# fizz buzz


1.upto((ARGV[0]).to_i) do |i|
    puts "#{i}: #{'Fizz' if i % 3 == 0}#{'Buzz' if i % 5 == 0}"
end
