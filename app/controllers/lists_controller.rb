class ListsController < ApplicationController

    def index
        @lists = List.all
        render json: @lists.to_json()
    end



end
