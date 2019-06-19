class Instrument < ApplicationRecord
  belongs_to :user

  def self.categories
    ['Guitars',
     'Basses',
     'Keyboards',
     'Wind instruments',
     'Stringed instruments',
     'DJ equipment',
     'Studio equipment'].sort
  end
end
