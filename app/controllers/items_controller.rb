class ItemsController < ApplicationController
    def index
        @items = Item.all
        @item = Item.new
        @users = User.all
    end
    
    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to root_path
        else
            @items = Item.all
            @users = User.all
            render :index
        end
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        redirect_to items_path, notice: "削除しました"
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :user_id, :shared)
    end

end