class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end
  def new
    @Portfolio_item = Portfolio.new
  end
  def create
    @Portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @Portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
