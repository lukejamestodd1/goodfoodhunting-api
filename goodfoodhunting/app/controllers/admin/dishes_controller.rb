class Admin::DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new
    @dish.name = params[:dish][:name]
    @dish.save
    redirect_to '/admin/dishes'
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.name = params[:dish][:name]
    @dish.save
    redirect_to '/admin/dishes'
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect_to '/admin/dishes'
  end

end