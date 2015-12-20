class Event < ActiveRecord::Base

  validates :date, presence: true
  validates :location, presence: true, length: { minimum: 8 }
  validates :players_amount, presence: true

  def location_search
  end

  def all_events
    @events ||= Event.all
  end
  
end
