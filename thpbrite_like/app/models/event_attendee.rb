class EventAttendee < ApplicationRecord
  belongs_to :event
  belongs_to :attendee, class_name: 'User', foreign_key: :attendee_id
  VALID_DATE_REGEX = /(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/
  validates :date, presence: true,
                   format: { with: VALID_DATE_REGEX}
  validates :place, presence: true
end
