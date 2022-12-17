class User < ApplicationRecord
  has_many :books
  validates_associated :books

  validates :display_name, length: { in: 2..50 }
  validates :dob_must_be_in_past

  def dob_must_be_in_past
    errors.add(:dob, 'must be in past') unless dob < Date.today
  end

  def dob_must_be_in_range
    errors.add(:dob, 'must be 119 years or fewer in the past') unless dob > Date.today - 119.years
  end
end
