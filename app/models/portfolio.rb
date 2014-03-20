class Portfolio < ActiveRecord::Base
  attr_accessible :description, :portfolio_image, :string, :title, :website, :remove_portfolio_image

  mount_uploader :portfolio_image, PortfolioImageUploader

  def to_param
    title
  end
end
