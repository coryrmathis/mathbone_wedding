class RSVP < ApplicationRecord

  validates :name, :email, :num_people, presence: true
  validates :email, format: /\A[\w+\-.]+@[a-zA-Z\d\-]+(\.[a-zA-Z]+)*\.[a-zA-Z]+\z/
end