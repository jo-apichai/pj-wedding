class Invitation < ApplicationRecord
  # Validations
  validates :first_name, presence: true
  validates :number_of_guests, presence: true, numericality: {
    integer_only: true, greater_than: 0, less_than: 6
  }
end
