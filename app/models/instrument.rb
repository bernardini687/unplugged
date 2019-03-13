class Instrument < ApplicationRecord
  belongs_to :member

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :category, presence: true
  validates :address, presence: true
  # validates :photo, presence: true
  # validates :score, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  # price

  # # To allow photo upload from cloudinary
  # mount_uploader :photo, PhotoUploader
end
