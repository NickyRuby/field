class StaticPagesController < ApplicationController

  def home
    @events ||= Event.all
    if @events.find_by(pamams[:id])

    else
      render 'new'
    end

  end

end
