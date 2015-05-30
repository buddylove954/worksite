class SiteController < ApplicationController
  def index
    @contact = Contact.new 
    render 'home'
  end

  def create
  	@contact = Contact.new params
  	puts params
  	@contact.save
  end

  private

  # def contacts_params
  # 	params.require(:contact).permit(:name, :email, :phone, :description)
  # end
end
