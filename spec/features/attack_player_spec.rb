feature 'attack player' do
  scenario 'confirmation of player 1 attack' do
    sign_in_and_play
    click_button "Cheat emissions test!"
    expect(page).to have_content "Volkswagen used Cheat Emissions. It's super effective! Polar Bear -12 HP."
  end

  scenario 'confirmation of player 2 attack' do
    sign_in_and_play
    click_button "Cheat emissions test!"
    click_button "OK"
    click_button "Lick paw"
    expect(page).to have_content "Bear's social media gets attention and VW is fined. Volkswagen -12 HP."
  end

  scenario 'reduce HP by 12' do
    sign_in_and_play
    click_button "Cheat emissions test!"
    click_button "OK"
    expect(page).not_to have_content "Polar Bear: 100HP"
    expect(page).to have_content "Polar Bear: 88HP"
  end

  scenario 'reduce HP by 12' do
    sign_in_and_play
    click_button "Cheat emissions test!"
    click_button "OK"
    click_button "Lick paw"
    click_button "OK"
    expect(page).not_to have_content "Volkswagen: 100HP"
    expect(page).to have_content "Volkswagen: 88HP"
  end
end
