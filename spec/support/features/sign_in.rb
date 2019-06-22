module Features
  def sign_in
    sign_in_as('test1@mail.com')
  end

  def sign_in_as(email)
    visit root_path

    click_on 'Sign up / Sign in'
    fill_in 'Email', with: email
    fill_in 'Password', with: '123456'
    click_on 'Sign up'
  end
end
