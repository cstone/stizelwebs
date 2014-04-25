class PortfoliosController < ApplicationController


  def index
    @portfolios = Portfolio.page(params[:page]).per(5)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @portfolios }
    end
  end

  def show
    @portfolio = Portfolio.find_by_slug!(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portfolio }
    end
  end
end
