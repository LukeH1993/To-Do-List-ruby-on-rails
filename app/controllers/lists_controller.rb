class ListsController < ApplicationController
  before_action :authenticate_user!
   def index
    @lists = current_user.list
  end

  def show
    @list = current_user.list.find(params[:id])
  end

  def new
    @list = current_user.list.new
  end

  def create
    new_list = current_user.list.create(list_params)
    new_list.save
    redirect_to new_list
  end

  def edit
    @list = current_user.list.find(params[:id])
  end

  def update
    list = current_user.list.find(params[:id])
    current_user.list.update(list_params)
    redirect_to list
  end

  def destroy
    current_user.list.destroy(params[:id])
    redirect_to lists_url
  end

  protected
  def list_params
    params.require(:list).permit(:title, :item, :user_id)
  end
end