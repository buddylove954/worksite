class SiteController < ApplicationController
  def index
    @contact = Contact.new
    render 'home'
  end
end
