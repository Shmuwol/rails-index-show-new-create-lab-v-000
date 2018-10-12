# require 'pry'
class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
    # binding.pry
  end


  def new
  end

  def create
    # binding.pry
    @coupon = Coupon.new(coupon_params)
    @coupon.save
 # binding.pry


    redirect_to coupon_path(@coupon)
  end

  private

  def coupon_params
    params.permit(:coupon_code, :store)
    # params.require(:coupon).permit(:store, :coupon_code)
  end

end
