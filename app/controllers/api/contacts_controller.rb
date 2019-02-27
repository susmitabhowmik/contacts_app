class Api::ContactsController < ApplicationController
  def contact_1
    @contact = Contact.first
    render 'contact_1.json.jbuilder'
  end

  def every_contact
    @contacts = Contact.all
    render 'every_contact.json.jbuilder'
  end
end
