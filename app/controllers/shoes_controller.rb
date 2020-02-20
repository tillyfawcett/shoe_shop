class ShoesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end
end
