#write your code here
def countdown(n)
  countdown = n
  while countdown > 0
    countdown =- 1
    puts "#{number} SECOND(S)!"
  end
    return "HAPPY NEW YEAR!"
end

def countdown_with_sleep(n)
  countdown = n
  countdown =- 1
  while countdown > 0
    puts "#{number} SECOND(S)!"
    sleep(1.second)
  end
    return "HAPPY NEW YEAR!"
end 
