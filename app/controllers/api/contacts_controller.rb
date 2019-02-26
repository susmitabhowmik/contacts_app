class Api::ContactsController < ApplicationController
  def contact_1
    @contact = Contact.first
    render 'contact_1.json.jbuilder'
  end
end
