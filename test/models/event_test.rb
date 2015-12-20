require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def setup
    @event = Event.new(date:"11/12/15",location:"Prospekt Pobedy st,61",price:150,
                      players_amount:5)
  end
  test "should be valid" do
    assert @event.valid?
  end

  test "date shouldn't be blank" do
    @event.date = "     "
    assert_not @event.valid?
  end

  
end
