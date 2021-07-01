class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find_by_id(params[:id])
    end

    def new
    end

    def create
  
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        # if @coupon.save
        redirect_to coupon_path(@coupon)
        # else
        #   render :new
        # end
    end
end