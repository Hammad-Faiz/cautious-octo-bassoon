class VendorSweetsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index 
    render json: VendorSweet.all
  end

  def create
    vendor_sweet = VendorSweet.create!(params_create)
    render json: vendor_sweet, status: :created
  end

  def destroy 
    vendor_sweet = VendorSweet.find(params[:id])
       if vendor_sweet.destroy
          head :no_content
       else 
          render json: { error: "vendorSweet not found"}
       end
  end

  private 

  def params_create
    params.permit(:price, :vendor_id, :sweet_id)
  end

   def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end


end
