class ContactsController < ApplicationController

  before_action :require_logged_in_user


  def index
    @contacts = current_user.contacts
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = current_user.contacts.build(contact_params)
    if @contact.save
      flash[:success] = 'Contato criado com sucesso.'
      redirect_to user_contacts_path
    else
      render 'new'
    end
  end

  def edit
    @contact = current_user.contacts.find_by(id: params[:id])
    if @contact.nil?
      flash[:danger] = 'Contato não encontrado.'
      redirect_to user_contacts_path(current_user)
    end
  end

  def update
    @contact = current_user.contacts.find(params[:id])
    if @contact.update(contact_params)
      flash[:success] = 'Contato atualizado com sucesso'
      redirect_to user_contacts_path
    else
      render 'edit'
    end
  end

  def destroy
    @contact = current_user.contacts.find(params[:id])
    if @contact.destroy
      flash[:success] = 'Contato removido com sucesso'
      redirect_to user_contacts_path
    else
      flash[:danger] = 'Contato não encontrado.'
      redirect_to user_contacts_path(current_user)
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :phone)
    end
end
