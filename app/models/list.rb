# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  validates :name, presence: true, allow_blank: false
end
