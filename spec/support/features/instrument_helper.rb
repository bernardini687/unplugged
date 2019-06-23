module Features
  def fill_out_instrument(brand: 'Fender', model:, category: 'Guitar')
    fill_in 'Brand', with: brand
    fill_in 'Model', with: model
    select category, from: 'Category'
  end

  def create_instrument(*form)
    click_on 'Add your instrument'
    fill_out_instrument(*form)
    click_on 'Submit'
  end

  def update_instrument(*form)
    click_on 'Edit'
    fill_out_instrument(*form)
    click_on 'Save changes'
  end

  def display_instrument(text)
    have_css '.instruments h4', text: text
  end
end
