require 'rails_helper'

feature 'User creates instrument' do
  scenario 'successfully' do
    visit root_path

    click_on 'Add your instrument'
    fill_in 'Brand', with: 'Fender'
    fill_in 'Model', with: 'Stratocaster'
    select 'Guitar', from: 'Category'
    click_on 'Submit'

    expect(page).to have_css 'h3', text: 'Fender Stratocaster'
  end
end
