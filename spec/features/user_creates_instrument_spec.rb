require 'rails_helper'

feature 'User creates instrument' do
  scenario 'successfully' do
    sign_in
    create_instrument
    expect(page).to have_css '.instruments h4', text: 'Fender Jaguar'
  end
end
