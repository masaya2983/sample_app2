class ListController < ApplicationController
  def new
    @list=List.new
  end
def create
  list=List.new(list_params)
  list.save
end

  def index
    @list=List.all
  end

  def show
    @list=List.find(params[:id])
  end

  def edit
  end
 private
 def list_params
   params.require(:list).parmit(:title, :body, :image)
 end
end
