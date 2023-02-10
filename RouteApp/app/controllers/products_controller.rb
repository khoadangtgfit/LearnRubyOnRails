class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :show, :destory]
  def index

  end

  def show

  end

  def edit

  end

  def create

  end


  def update

  end

  private
  def set_procduct
   @product=Product.find(:id)
  end

  def product_param
    params.require(:product).permit(:name)
  end



end
