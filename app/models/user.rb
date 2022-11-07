class User < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :username, length: {minimum: 3}, allow_blank: false
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :identifier, presence: true, on: create

    has_one :profile
    has_one :education 
    has_many :books

    scope :by_book_year, ->(year) {joins(:books).where(books: {year: year})}

before_validation :generate_id

private

def generate_id
    self.identifier = "ABC-#{Date.today.year}-#{SecureRandom.hex(5)}"
end
def self.generate_number
    SecureRandom.hex(10)
end

def generate_number_from_user
    username + SecureRandom.hex(10)
end
def self.full_name
    self.second.name + self.second.username
end
def self.location
    email
end
end
