require 'rails_helper'

feature 'User updates instrument' do
  scenario 'successfully' do
    sign_in
    create_instrument(model: 'Telecaster')
    expect(page).to display_instrument('Fender Telecaster')

    update_instrument(model: 'Stratocaster')
    expect(page).to have_h1('Fender Stratocaster')
  end
end
