class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 },
                   uniqueness: true

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }

  has_many :created_events, class_name: 'Event', foreign_key: :creator_id
  has_many :event_attendees, foreign_key: 'attendee_id'
  has_many :attending_events, through: :event_attendees, source: :event

end
