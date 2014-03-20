class PortfoliosController < ApplicationController


  def index
    @portfolios = Portfolio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portfolios }
    end
  end

  def show
    @portfolio = Portfolio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portfolio }
    end
  end
end
