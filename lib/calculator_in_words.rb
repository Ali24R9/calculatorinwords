def calculator(sentence)
  operators = {"plus" => :+, "multiplied" => :*, "+" => :+, "add" => :+,
               "*" => :*, "divided" => :/, "/" => :/, "^" => :**,
               "to the" => :**, "minus" => :-, "subtract" => :-, "-" => :-
              }
  numbers = []
  split_sentence = sentence.split(" ")
  operator = " "
  split_sentence.each do |i|
    if split_sentence.include?('to') && split_sentence.include?('the') &&split_sentence.include?('power')
      operator = "^"
    end
    if operators.has_key?(i)
      operator = i
    end
    if i.include?("rd") || i.include?("nd") || i.include?("st") || i.include?("th")
      to_array = i[0..-2].to_i
      numbers.push(to_array)
    end
    if i == "0"
      to_array = i.to_i
      numbers.push(to_array)
    else 
      to_array = i.to_i
      if to_array != 0
        numbers.push(to_array)
      end 
    end
  end

  if operators[operator] == :*
    total = 1
    numbers.each do |i|
      total *=i
      puts total
    end
  elsif operators[operator] == :+
    total = 0
    numbers.each do |i|
      total +=i
    end
  elsif operators[operator] == :-
    total = 0
    numbers.each_index do |i|
      numbers.each do |j|
        if i == 0
          total += j
        else 
          total -= j
        end
      end
    end
  elsif operators[operator] == :**
    total = 0
    numbers.each_index do |i|
      numbers.each do |j|
        if i == 0
          total += j
        else
          total **= j
        end
      end
    end
  end
# puts operators[operator]
# puts operators[operator]
# puts numbers[0]
# puts numbers[1]
# total = (numbers[0]..numbers[1]).reduce(operators[operator])
puts total
end

calculator("What is 7 minus 2")
