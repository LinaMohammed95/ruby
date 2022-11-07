class Book < ApplicationRecord
    belongs_to :user
    validates :year, uniqueness: { scope: :user_id }
    scope :year_2022, -> { where(year: 2022) }

end
