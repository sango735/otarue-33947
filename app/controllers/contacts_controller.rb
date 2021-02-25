class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end
  def new
  end
  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
      redirect_to new_contact_path
    else
      render :index
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:title, :opinion)
  end
end
