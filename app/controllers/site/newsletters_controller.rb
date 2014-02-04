class Site::NewslettersController < ApplicationController
  # GET /site/newsletters
  # GET /site/newsletters.json
  
  respond_to :js, :html
  
  def index
    @site_newsletters = Site::Newsletter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_newsletters }
    end
  end

  # GET /site/newsletters/1
  # GET /site/newsletters/1.json
  def show
    @site_newsletter = Site::Newsletter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site_newsletter }
    end
  end

  # GET /site/newsletters/new
  # GET /site/newsletters/new.json
  def new
    @site_newsletter = Site::Newsletter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site_newsletter }
    end
  end

  # GET /site/newsletters/1/edit
  def edit
    @site_newsletter = Site::Newsletter.find(params[:id])
  end

  # POST /site/newsletters
  # POST /site/newsletters.json
  def create
     begin
      @site_newsletter = Newsletter.new(params[:site_newsletter])
      if @site_newsletter.save
        flash[:site_newsletter] = 'Obrigado, Recebemos seu cadastro!'
        #redirect_to(root_path)
      else
        render :new
      end
    rescue ScriptError
      flash[:site_newsletter] = 'Desculpe-nos, aconteceu um erro inesperado!'
    end
  end

  # PUT /site/newsletters/1
  # PUT /site/newsletters/1.json
  def update
    @site_newsletter = Site::Newsletter.find(params[:id])

    respond_to do |format|
      if @site_newsletter.update_attributes(params[:site_newsletter])
        format.html { redirect_to @site_newsletter, notice: 'Newsletter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site/newsletters/1
  # DELETE /site/newsletters/1.json
  def destroy
    @site_newsletter = Site::Newsletter.find(params[:id])
    @site_newsletter.destroy

    respond_to do |format|
      format.html { redirect_to site_newsletters_url }
      format.json { head :no_content }
    end
  end
end
