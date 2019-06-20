module Features
  def sign_in
    visit root_path

    click_on 'Sign up / Sign in'
    fill_in 'Email', with: 'test1@mail.com'
    fill_in 'Password', with: '123456'
    click_on 'Sign up'
    save_and_open_page
  end
end
