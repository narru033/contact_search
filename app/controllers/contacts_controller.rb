class ContactsController < ApplicationController

  def index
  	@contacts = Contact.search(params[:search])
  end

  def show
  	@contact = Contact.find(params[:id])
  	render layout: false
  end

end
