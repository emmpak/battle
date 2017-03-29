def sign_in_and_play
  visit '/'
  fill_in 'Player 1', :with => "Skeeter"
  fill_in 'Player 2', :with => "Hutchkins"
  click_button("Submit")
end
