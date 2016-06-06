class LieusController < ApplicationController


  def index
    @lieux = Lieu.all
    @genres = ["CHAMBRE D\’HÔTES",'GÎTE','CAMPING','HÔTEL']

    @markers = Gmaps4rails.build_markers(@lieux) do |lieu, marker|
      @my_lieu = lieu
      marker.lat lieu.latitude
      marker.lng lieu.longitude
      # marker.infowindow render_to_string(:partial => "/spots/infowindow")
      # marker.infowindow render_to_string(:partial => 'lieu/infowindow', :locals => { :object => @my_lieu})

      # marker.picture({
      #   :url => ActionController::Base.helpers.asset_path('marker.png'),#{ }"http://placehold.it/30x30",
      #   :width   => 28,
      #   :height  => 35
      #  })
    end
  end


end
