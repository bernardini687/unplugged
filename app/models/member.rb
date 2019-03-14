class Member < ApplicationRecord
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :instruments, dependent: :destroy

  # has_many :bookings, dependent: :destroy
  # has_many :instruments, through: :bookings

  # validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  # validates :score, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
