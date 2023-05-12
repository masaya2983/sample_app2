class ListController < ApplicationController
  def new
    @list=List.new
  end
def create
  @list=List.new(list_params)
  if@list.save
    flash[:notice] = "投稿が成功しました"
  redirect_to list_path(@list.id)
  else
    @lists=List.all
  rendar :index
  end
end

  def index
    @list=List.all
  end

  def show
    @list=List.find(params[:id])
  end

  def edit
    @list=List.find(params[:id])
  end
  def destroy
    list =  List.find(params[:id])
    list.destroy
    redirect_to '/lists'
  end
 private
 def list_params
   params.require(:list).parmit(:title, :body, :image)
 end
end
