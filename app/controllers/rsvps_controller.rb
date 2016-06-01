class RsvpsController < ApplicationController

def new
  @rsvp = Rsvp.new

end

def create
    @rsvp = Rsvp.new(rsvp_params)

    if @rsvp.save

        flash.now[:notice] = "Merci pour votre confirmation !"
        redirect_to root_path
    else

        flash.now[:notice] = "Merci de réessayer, cela n'a pas fonctionné"
        render 'home'

    end
end

 private

  def rsvp_params
    params.require(:rsvp).permit(:nom, :prenom, :commentaire, :oui, :nbpers, :mail)
  end

end
