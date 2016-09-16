
first_card =[]
second_card =[]
both_cards = first_card[0].to_i + second_card[0].to_i

dealer_card = []
dealer_total = dealer_card[0].to_i

ace_card = {
  "a" => 11,
}

royal_cards = {
  "j" => 10,
  "q" => 10,
  "k" => 10,
}

normal_cards = {
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
}

def select_first_card(first, ace, royals, normals, firststorage)
  puts "Please enter your first card. You may select numbers 2-10, or type 'A' for an ace. Use 'J', 'Q', or 'K' for face cards: "
  first = gets.chomp.downcase
  if first == normals[first].to_i
    puts "#{normals[first]} is your first card."
    firststorage << "#{normals[first]}"
  elsif first == royals[first]
    puts "#{royals[first]} is your first card."
    firststorage << "#{royals[first]}"
  elsif first == ace[first]
    puts "#{ace[first]} is your first card."
    firststorage << "#{ace[first]}"
  end
end

def select_second_card(second, ace, royals, normals, secondstorage)
  puts "Please enter your next card: "
  second = gets.chomp.downcase
  if second == normals[second]
    puts "#{normals[second]} is your second card."
    secondstorage << "#{normals[second]}"
  elsif second == royals[second]
    puts "#{royals[second]} is your second card."
    secondstorage << "#{royals[second]}"
  elsif second == ace[second]
    puts "#{ace[second]} is your second card."
    secondstorage << "#{ace[second]}"
  end
end

def select_dealer_card(dealer, ace, royals, normals, dealstorage)
  puts "Please enter the dealer's card: "
  dealer = gets.chomp.downcase
  if dealer == normals[dealer]
    puts "#{normals[dealer]} is your dealer card."
    dealstorage << "#{normals[dealer]}"
  elsif dealer == royals[dealer]
    puts "#{royals[dealer]} is your dealer card."
    dealstorage << "#{royals[dealer]}"
  elsif dealer == ace[dealer]
    puts "#{ace[first]} is your second card."
    dealstorage << "#{ace[dealer]}"
  end
end

def hard_advice(firststorage, secondstorage, both, dealer)
  if (firststorage[0].to_i != 11) && (secondstorage[0].to_i != 11)
    puts "Your hand is hard."
    if (2 <= dealer && dealer <= 3) && (12 <= both && both <= 15)
    elsif (4 <= dealer && dealer <= 6) && (5 <= both && both <= 11)
    elsif (7 <= dealer && dealer <= 11) && (5 <= both && both <= 16)
      puts "You should hit on your next turn."
    else
      puts "You should stand on your next turn. Do not hit."
    end
  end
end

def soft_advice(firststorage, secondstorage, both, dealer)
  if (firststorage[0].to_i == 11) || (secondstorage[0].to_i == 11)
    puts "Your hand is soft."
    if (2 <= dealer && dealer <= 8) && (13 <= both && both <= 17)
    elsif (9 <= dealer && dealer <= 10) && (13 <= both && both <= 18)
    elsif (dealer == 11) && (13 <= both && both <= 17)
      puts "You should hit on your next turn."
    else
      puts "You should stand on your next turn. Do not hit."
    end
  end
end

loop do
first_choice = first_card[0].to_i
second_choice = second_card[0].to_i
dealer_choice = dealer_card[0].to_i

select_first_card(first_choice, ace_card, royal_cards, normal_cards, first_card)
select_second_card(second_choice, ace_card, royal_cards, normal_cards, second_card)
select_dealer_card(dealer_choice, ace_card, royal_cards, normal_cards, dealer_card)
hard_advice(first_card, second_card, both_cards, dealer_total)
soft_advice(first_card, second_card, both_cards, dealer_total)

# p first_card UNMUTE to test input
# p second_card UNMUTE to test input
# p dealer_card UNMUTE to test input

end
