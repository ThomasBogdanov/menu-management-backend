class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show update destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  # POST /restaurants
  def create
    success = []
    failure = []
    restaurant_params.each do |param|
      @restaurant = Restaurant.new(name: param['name'])
      menus = Menu.create_menus(param, @restaurant)
    end
    render json: { success: success, failure: failure }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurants).map do |params|
      params.permit(:name, menus: [:name, menu_items: [:name, :price]])
    end
  end
end
