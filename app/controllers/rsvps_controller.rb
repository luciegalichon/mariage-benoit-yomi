class RsvpsController < ApplicationController

def new
  @rsvp = Rsvp.new

end

def create
    @rsvp = Rsvp.new(rsvp_params)

    if @rsvp.save
      respond_to do |format|
        format.html { flash.now[:notice] = "Merci pour votre confirmation !"}
        format.js  # <-- will render `app/views/covoiturages/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'home' }
        format.js  # <-- idem
      end
    end
end

 private

  def rsvp_params
    params.require(:rsvp).permit(:nom, :prenom, :commentaire, :oui, :nbpers, :mail)
  end

end
