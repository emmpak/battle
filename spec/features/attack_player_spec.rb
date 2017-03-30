feature 'attack player' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_button "Cheat emissions test!"
    expect(page).to have_content "Volkswagen used Cheat Emissions. It's super effective! Polar Bear -12 HP."
  end

  scenario 'reduce HP by 12' do
    sign_in_and_play
    click_button "Cheat emissions test!"
    click_link "OK"
    expect(page).not_to have_content "Polar Bear: 100HP"
    expect(page).to have_content "Polar Bear: 88HP"
  end

end
