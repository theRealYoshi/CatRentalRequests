class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def create
    @cat = Cat.create(cat_params)

    if @cat.save
      render :show
    else
      raise "Can't create this cat."
      render :index
    end
  end

  def new
    @cat = Cat.new
    render :new
  end

  def update
    @cat = Cat.find(params[:id])

    if @cat.update(cat_params)
      render :show
    else
      raise "Can't update this cat."
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def cat_params
    params.require(:cat).permit(:name, :sex, :description, :color, :birth_date)
  end
end
