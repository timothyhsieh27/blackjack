first_card = []
second_card = []
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
  firststorage << first
end

def select_second_card(second, ace, royals, normals, secondstorage)
  puts "Please enter your next card: "
  second = gets.chomp.downcase
  secondstorage << second
end

def select_dealer_card(dealer, ace, royals, normals, dealstorage)
  puts "Please enter the dealer's card: "
  dealer = gets.chomp.downcase
  dealstorage << dealer
end

def hard_advice(firststorage, secondstorage, both, dealer)
  if (firststorage[0].to_i != 11) && (secondstorage[0].to_i != 11)
    report_hard_hand
    calculate_advice_hard_hand
  end
end

def calculate_advice_hard_hand
  if (2 <= dealer && dealer <= 3) && (12 <= both && both <= 15)
  elsif (4 <= dealer && dealer <= 6) && (5 <= both && both <= 11)
  elsif (7 <= dealer && dealer <= 11) && (5 <= both && both <= 16)
    recommend_hit
  else
    recommend_stand
  end
end

def soft_advice(firststorage, secondstorage, both, dealer)
  if (firststorage[0].to_i == 11) || (secondstorage[0].to_i == 11)
    report_soft_hand
    calculate_advice_soft_hand
  end
end

def calculate_advice_soft_hand
  if (2 <= dealer && dealer <= 8) && (13 <= both && both <= 17)
  elsif (9 <= dealer && dealer <= 10) && (13 <= both && both <= 18)
  elsif (dealer == 11) && (13 <= both && both <= 17)
    recommend_hit
  else
    recommend_stand
  end
end

def report_hard_hand
  puts "Your hand is hard."
end

def report_soft_hand
  puts "Your hand is soft."
end

def recommend_hit
  puts "You should hit on your next turn."
end

def recommend_stand
  puts "You should stand on your next turn. Do not hit."
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
