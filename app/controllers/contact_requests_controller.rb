class ContactRequestsController < ApplicationController
  
  def show 
    @cr = ContactRequest.find(params[:id])
  end
  
  def new
    @cr = ContactRequest.new
  end
  
  def create
    @cr = ContactRequest.new(contactrequest_params)
    if @cr.save
      UserMailer.contact_us(@cr).deliver
      flash[:success] = "We have received your request and will respond as soon as possible."
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  private
    def contactrequest_params
      params.require(:contact_request).permit(:name, :email, :message)
    end
end
