class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    code = params[:coupon_code]
    store = params[:store]
    @coupon = Coupon.new(coupon_code:code, store:store)
    if @coupon.save
      redirect_to coupon_path(@coupon)
    end
  end

end
