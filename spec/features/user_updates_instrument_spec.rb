require 'rails_helper'

feature 'User updates instrument' do
  scenario 'successfully' do
    sign_in
    create_instrument(model: 'Telecaster')
    expect(page).to have_css '.instruments h4', text: 'Fender Telecaster'

    update_instrument(model: 'Stratocaster')
    expect(page).to have_css 'h1', text: 'Fender Stratocaster'
  end
end
