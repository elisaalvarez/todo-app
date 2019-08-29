class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lists, dependent: :destroy
  has_one_attached :photo
  validates :name, :description, presence: true, allow_blank: false
end
