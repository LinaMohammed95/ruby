class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
        # :rememberable, :validatable
    #validates :identifier, presence: true, on: create

    #has_one :profile
    #has_one :education 
    #has_many :books

   # scope :by_book_year, ->(year) {joins(:books).where(books: {year: year})}

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
