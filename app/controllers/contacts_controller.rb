class ContactsController < ApplicationController
	def new
    @contact = Contact.new 
    render 'home'
  end

  def create
    puts "fuck"
    puts params["name"]
  	@contact = Contact.new
    @contact.name = params["name"]
    @contact.phone = params["phone"]
    @contact.email = params["email"]
    @contact.description = params["description"]
    puts @contact
    @contact.save
  end

  private

  def contacts_params
  	params.require(:contact).permit(:name, :phone, :email, :description)
  end
end
