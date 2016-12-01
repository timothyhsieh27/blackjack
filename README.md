# Blackjack Advisor: A Tool for Hitting or Standing!

This tool is designed to provide the following functions:

1. Ask for and accept input from a user for a "first card" in a game of Blackjack.
2. Ask for and accept input from a user for a "second card" in a game of Blackjack.
3. Ask for and accept input from a user for a "dealer's card"" in a game of Blackjack.
4. Factor in the answers above and compute whether the user should "hit" or "stand" based on the returned analysis and scenario.

Current version notes:

1. Objective 1 Functionality
  - Successfully displays text asking user for a card number.
  - Successfully stores first card number for hit / stand recommendation
  - Error: Fails to accurately state that "if the first card is equivalent to the value of either the normals(normal_cards), royals(royal_cards), or ace(ace_card) arrays, it will store the stated first card into a separate, 'first_card' array" and puts out the result.
  - Secondary Error: As a result of the above failure, the first card cannot be stored and used for further computation in Objective 4.

2. Objective 2 Functionality
  - Successes and errors mimic those of Objective 1. Note that card being requested as input is the second player card.

3. Objective 3 Functionality
  - Successes and errors mimic those of Objective 1. Note that card being requested as input is the dealer's card.

4. Objective 4 Functionality
  - Successfully computes the recommendation to "hit" or "stay" and puts the result based on the user's first personal card values in a "Hard Hand" scenario ONLY.
  - Due to the aforementioned errors in Objectives 1-3, the program fails to adjust the recommendations for optimal Hard Hand and optimal Soft Hand values. All tested outputs thus far have yielded Hard Hand recommendations, despite the deliberate selection of Soft Hand cards. Present speculation favors the theory that the failure to store card values in arrays for access later is the reason the hard_advice and soft_advice methods are unable to determine whether the cards from the user do in fact compose either a hard or soft hand.

  Recommendations:
- Troubleshoot errors in Objective 1 (present in the select_first_card, select_second_card, and select_dealer_card methods) to potentially resolve all issues.
- Contingency: Should the above step yield successful storage of card values, but unsuccessful computation of hard and soft scenarios, consider rewriting the initial conditions of the hard_advice and soft_advice methods.
