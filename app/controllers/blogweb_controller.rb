class BlogwebController < ApplicationController
  def index
  	@name = params[:name]
  end
end
