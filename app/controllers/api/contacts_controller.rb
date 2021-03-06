class Api::ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
      if params[:group]
        #find the group
        group = Group.find_by(name: params[:group])
        #find all the contacts in that group
        @contacts = group.contacts
      end
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def show
    p 'current_user'
    p current_user
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name] ,
      email: params[:email],
      phone_number: params[:phone_number],
      middle_name: params[:middle_name],
      bio: params[:bio],
      user_id: current_user.id)
    if @contact.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entry
    end
  end

  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number    
    @contact.middle_name = params[:middle_name] || @contacts.middle_name
    @contact.bio = params[:bio] || @contacts.bio  
    if @contact.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entry
    end

  end

  def destroy
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.destroy
    render 'destroy.json.jbuilder'
  end
 
end
