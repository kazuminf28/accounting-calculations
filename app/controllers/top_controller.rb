class TopController < ApplicationController
    def index
        @users = User.all
        @shared_total = Item.shared_total
    end
end