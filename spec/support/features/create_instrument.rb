module Features
  def fill_out_instrument(brand: 'Fender', model: 'Jaguar', category: 'Guitar')
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
    click_on 'Edit this instrument'
    fill_out_instrument(*form)
    click_on 'Save changes'
  end
end
