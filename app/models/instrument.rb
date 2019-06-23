class Instrument < ApplicationRecord
  belongs_to :user

  def self.categories
    [
      'Basses',
      'DJ equipment',
      'Guitars',
      'Keyboards',
      'Stringed instruments',
      'Studio equipment',
      'Wind instruments'
    ]
  end

  def name
    "#{brand} #{model}"
  end
end
