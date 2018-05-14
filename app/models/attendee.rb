class Attendee < ApplicationRecord

  EMAIL_REGEXP = /\A[\w+\-.]+@[a-zA-Z\d\-]+(\.[a-zA-Z]+)*\.[a-zA-Z]+\z/

  belongs_to :group, optional: true

  validates :rsvp, inclusion: {in: ["Confirmed", "Regrets"]}
  validates :email, format: { with: EMAIL_REGEXP }
end