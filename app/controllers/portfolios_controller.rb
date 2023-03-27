class PortfoliosController < ApplicationController
  
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_url(@portfolio_item), notice: 'Portfolio item is now live.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
  end

end
