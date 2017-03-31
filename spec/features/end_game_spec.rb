feature "the game can end, in which a player wins and loses" do
  scenario "player 1 wins the game, player 2 loses" do
    sign_in_and_play
    # current_turn = "Volkswagen"
    8.times {
    click_button("Cheat emissions test!")
    click_button("OK")
    click_button("Lick paw")
    click_button("OK")
    }
    click_button("Cheat emissions test!")
    expect(page).to have_content("Volkswagen wins!")
  end

  scenario "player 2 wins the game, player 1 loses" do
    sign_in_and_play
    # current_turn = "Polar Bear"
    8.times {
    click_button("Lick paw")
    click_button("OK")
    click_button("Cheat emissions test!")
    click_button("OK")
    }
    click_button("Lick paw")
    expect(page).to have_content("Polar Bear wins!")
  end

end
