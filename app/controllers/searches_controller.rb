class SearchesController < ApplicationController
def show
 @search_results = User.where("username ilike ?", "%#{params[:username]}%")
end
end
