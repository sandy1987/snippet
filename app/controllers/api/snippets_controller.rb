class Api::SnippetsController < ApplicationController 
    def index
    	debugger 
    @snipptes = Snippet.all
    respond_to do |format|
      format.json { render json: @snipptes }
    end
  end

end