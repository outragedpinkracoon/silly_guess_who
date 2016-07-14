def guess_who

  jedi = [
    {
      name: "luke",
      hair: "brown",
      glasses: false,
      lightsaber: "green",
      darkside: false
    },
    {
      name: "leia",
      hair: "brown",
      glasses: true,
      lightsaber: "green",
      darkside: false
    },
    {
      name: "yoda",
      hair: "none",
      glasses: true,
      lightsaber: "green",
      darkside: false
    },
    {
      name: "yoda",
      hair: "none",
      glasses: false,
      lightsaber: "red",
      darkside: true
    },
    {
      name: "emperor",
      hair: "none",
      glasses: true,
      lightsaber: "red",
      darkside: true
    },
    {
      name: "kylo",
      hair: "brown",
      glasses: false,
      lightsaber: "red",
      darkside: true
    },
  ]

  game_over = false
  selected = jedi.sample

  while(game_over == false)
    selection = show_menu
    if(selection == 1)
      result = guess_person(selected)
      game_over = true if(result == true)
    elsif(selection == 2)
      guess_feature(selected)
    elsif(selection == 3)
      show_jedi(jedi)
    end
  end

  show_end

end

def show_jedi(jedi)
  for person in jedi
    puts "name: #{person[:name]}"
    puts "hair: #{person[:hair]}"
    puts "glasses: #{person[:glasses]}"
    puts "lightsaber: #{person[:lightsaber]}"
    puts "darkside: #{person[:darkside]}"
    puts "*********"
  end
end

def show_end
  puts "Congratulations! You guessed right."
end

def show_menu
  puts "1: Guess jedi 2: Guess feature 3: Show jedi"
  return gets.to_i
end

def guess_feature(selected)
  puts "Which feature do you want to guess?"
  feature = gets.chomp
  puts "What do you think the feature is?"
  guess = gets.chomp
  if selected[feature.to_sym] == guess
    puts "Yes they have this feature"
  else
    puts "Nope! They do not have this feature."
  end
end

def guess_person(selected)
  puts "Who do you think it is?"
  guess = gets.chomp.downcase
  if(selected[:name] == guess)
    return true
  else
    puts "Sorry, that's not who it is!"
    return false
  end
end

guess_who()