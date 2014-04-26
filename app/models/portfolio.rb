class Portfolio < ActiveRecord::Base
  attr_accessible :description, :portfolio_image, :slug, :title, :website, :remove_portfolio_image, :portfolio_image_cache

  mount_uploader :portfolio_image, PortfolioImageUploader



  def to_param
    slug
  end
end
