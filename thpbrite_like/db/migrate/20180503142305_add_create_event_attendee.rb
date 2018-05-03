class AddCreateEventAttendee < ActiveRecord::Migration[5.2]
  def change
    change_table :event_attendees do |t|
      t.belongs_to :event
      t.belongs_to :attendee

    end
  end
end
