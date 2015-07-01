class SnippetsController < ApplicationController
  def index
    @snipptes = Snippet.all
      if params[:search]
        @snipptes = Snippet.search(params[:search]).paginate(:page => params[:page], :per_page => 6).order('created_at DESC')
      else
        @snipptes = Snippet.paginate(:page => params[:page], :per_page => 6).order('created_at DESC')
      end
  end

  def new
  	@snippet = Snippet.new
  end

  def create
  	@snippet = Snippet.new(snippet_params)
  	respond_to do |format|
	  	if @snippet.save
	  		format.html  { redirect_to(@snippet,:notice => 'Snippet was successfully created.') }
	    else
	        format.html  { render :action => "new" }
	  	end
	end
  end
  def show
  	@snippet = Snippet.find(params[:id])
  end

  private 

   def snippet_params
   		params.require(:snippet).permit(:body, :status)
   end
end
