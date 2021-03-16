class Coupon < ApplicationRecord
    def index
        @coupons = Coupon.all
      end
    
      def show
        @coupon = Coupon.find(params[:id])
      end
    
      def new
      end
    
      def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:last_name]
        @coupon.save
        redirect_to coupon_path(@coupon)
      end
end