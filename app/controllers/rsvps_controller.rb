class RsvpsController < ApplicationController

def new
  @rsvp = Rsvp.new

end

def create
    @rsvp = Rsvp.new(rsvp_params)

    if @rsvp.save
        respond_to do |format|
        format.html { redirect_to root_path }
        format.js  # <-- will render `app/views/mariages/create.js.erb`
      end

    else
      respond_to do |format|
        format.html { render 'mariages/home' }
        format.js  # <-- idem
      end
    end
end

 private

  def rsvp_params
    params.require(:rsvp).permit(:nom, :prenom, :commentaire, :oui, :nbpers, :mail)
  end

end
