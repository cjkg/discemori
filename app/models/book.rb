class Book < ApplicationRecord
  validates :pages, numericality: { in: 1..20_000 }

  validates :title, length: { in: 1..200 }

  validates :author_first, length: { in: 1..100 }

  validates :author_last, length: { maximum: 200 }
  # No need for presence, allowing for authors with first names, but no surnames, like Plato or Thomas.

  validates :finish_date, absence: true
end
