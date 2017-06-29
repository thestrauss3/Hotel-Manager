class SearchesController < ApplicationController
  def index
    if params[:search].strip == ""
      @blank_message = "You have submitted a empty query"
    else
      @customers = Customer.search(params[:search])
      if @customers == []
        @blank_message = "Searches have not resulted in any matches!"
      end
    end
  end
end
