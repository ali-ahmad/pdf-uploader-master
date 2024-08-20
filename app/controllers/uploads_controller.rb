class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def show
    @upload = Upload.find(params[:id])
  end
  def new
    @upload = Upload.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @upload }
    end
  end
  
  def create
      @upload = Upload.new(params[:upload])
      if @upload.save!
        flash[:notice] = "Successfully created upload."
        respond_to do |format|
          format.html {redirect_to uploads_path}
        end
      else
        render :action => 'new'
      end
    end
    def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    flash[:notice] = "Successfully destroyed upload."
    redirect_to uploads_url
  end
end
