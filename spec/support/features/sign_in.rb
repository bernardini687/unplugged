module Features
  def sign_in
    visit root_path

    click_on 'Sign up / Sign in'
    fill_in 'Email', with: 'test1@mail.com'
    fill_in 'Password', with: '123456', exact: true
    fill_in 'Password confirmation', with: '123456', exact: true
    page.execute_script("$('form#new-user').submit()")
  end
end
