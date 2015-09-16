class CatRentalRequestsController < ApplicationController
  def create
    @cat_rental_request = CatRentalRequest.create(request_params)

    if @cat_rental_request.save
      redirect_to cat_url(@cat_rental_request.cat.id)
    else
      raise "Can't rent this cat for these given dates"
      #render :index
    end
  end

  def new
    @cats = Cat.all
    render :new
  end


  def request_params
    params.require(:cat_rental_request).permit(:cat_id, :start_date, :end_date)
  end
end
