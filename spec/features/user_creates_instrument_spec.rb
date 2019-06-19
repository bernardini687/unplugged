require 'rails_helper'

feature 'User creates instrument' do
  scenario 'successfully' do
    visit root_path

    click_on 'Add your instrument'

    click_on 'Sign up'
    fill_in 'Email', with: 'test@mail.com'
    fill_in 'Password', with: '123456', exact: true
    fill_in 'Password confirmation', with: '123456', exact: true
    binding.pry
    page.execute_script("$('form#new-user').submit()")

    fill_in 'Brand', with: 'Fender'
    fill_in 'Model', with: 'Stratocaster'
    select 'Guitar', from: 'Category'
    click_on 'Submit'

    expect(page).to have_css '.instrument h3', text: 'Fender Stratocaster'
  end
end
