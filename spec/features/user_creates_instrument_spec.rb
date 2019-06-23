require 'rails_helper'

feature 'User creates instrument' do
  scenario 'successfully' do
    sign_in
    create_instrument(model: 'Jaguar')
    expect(page).to display_instrument('Fender Jaguar')
  end
end
