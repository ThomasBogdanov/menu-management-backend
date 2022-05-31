class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show update destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  # # GET /restaurants/1
  # def show
  #   render json: @restaurant
  # end

  # POST /restaurants
  def create
    success = []
    failure = []
    restaurant_params.each do |params|
      @restaurant = Restaurant.new(params)
      if @restaurant.save
        success << @restaurant
      else
        failure << [@restaurant, @restaurant.errors]
      end
    end

    render_hash = { success: success, failure: failure }

    render json: render_hash
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurants).map do |params|
      params.permit(:name, :address_line1, :address_line2,
                    :city, :state, :country, :postal_code, :phone_number1, :phone_number2,
                    :fax_number, :email, :website, :price_range, :category, :is_active)
    end
  end
end
