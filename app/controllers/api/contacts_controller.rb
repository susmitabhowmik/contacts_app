class Api::ContactsController < ApplicationController
  def show
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end
end
