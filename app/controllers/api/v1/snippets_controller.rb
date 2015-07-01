class Api::V1::SnippetsController < ApplicationController 
    respond_to :json
    def index
    @snipptes = Snippet.all
    respond_to do |format|
      format.json { render json: @snipptes }
    end
  end

end