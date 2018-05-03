module EventsHelper

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end


    def lol_date(events)
      now = Time.now
      @past_events = []
      @future_events = []
      events.each do |event|
        if event.date > Time.now
          @future_events << event
        else
          @past_events << event
        end
      end
      @future_events
      @past_events
    end

end
