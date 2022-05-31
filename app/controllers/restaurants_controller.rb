# frozen_string_literal: true

# Currently accepts restaurant { menu { menu_item } } objects to convert them to the database
class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show update destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  # POST /restaurants
  def create
    result = {}
    restaurant_params.each do |param|
      @restaurant = Restaurant.create(name: param['name'], is_active: true)
      restaurant_name = param['name']
      result[restaurant_name] = []
      menus = Menu.create_menus(param, @restaurant)
      menus.each do |menu|
        items = Item.create_items_for_menus(menu[0], menu[1])
        result[restaurant_name] << items
      end
    end
    render json: result
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurants).map do |params|
      params.permit(:name, menus: [:name, { menu_items: %i[name price] }])
    end
  end
end
