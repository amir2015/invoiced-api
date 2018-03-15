class V1::ThecontactsController < ApplicationController
def index
    @contacts = Thecontact.all
    render json: @contacts, status: :ok  
end
def create
        @contact = Thecontact.new(contact_params)
        @contact.save
        render json: @contact , status: :created
end
def destroy 
    @contact = Thecontact.where(id: params[:id]).first 
    if @contact.destroy
        head(:ok)
        
    else
        head(:Unprocessable_entity)
        
    end
    
end

private
def contact_params

    params.require(:contact).permit(:first_name, :last_name, :email)
end
end
