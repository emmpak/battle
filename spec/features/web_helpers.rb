def sign_in_and_play
  visit '/'
  fill_in 'Player 1', :with => "Volkswagen"
  fill_in 'Player 2', :with => "Polar Bear"
  click_button("Submit")
end
