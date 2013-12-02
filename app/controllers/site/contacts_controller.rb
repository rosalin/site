#encoding: utf-8
class Site::ContactsController < ApplicationController
  unloadable
   
  def new
    @site_contact = Contact.new
  end

  def create
    begin
      @site_contact = Contact.new(params[:site_contact])
      if ContactMailer.new_contact(@site_contact).deliver
        flash[:notice] = 'Obrigado pelo seu contato!'
        redirect_to new_site_contact_path
      else
        render :new
      end
    rescue ScriptError
      flash[:error] = 'Desculpe-nos, esta mensagem não pode ser enviada'
    end
  end

end
