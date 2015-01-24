class ContactRequestsController < ApplicationController
  
  def show 
    @cr = ContactRequest.find(params[:id])
  end
  
  def new
    @cr = ContactRequest.new
  end
end
