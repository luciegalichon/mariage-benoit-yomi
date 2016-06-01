class MariagesController < ApplicationController
  def home

    @rsvp = Rsvp.new

    @photos = ["benyomi.jpeg","benyomi2.jpeg","benyomi3.jpeg","benyomi4.jpeg","benyomi5.jpeg","benyomi6.jpeg"]
  end

  def about
  end

  def contact
  end

  def lieux
  end

  def liste
  end

  def rsvp
    @rsvp = Rsvp.new
  end
end
