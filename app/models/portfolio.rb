class Portfolio < ActiveRecord::Base
  attr_accessible :description, :portfolio_image, :slug, :string, :title, :website, :remove_portfolio_image

  mount_uploader :portfolio_image, PortfolioImageUploader



  def to_param
    slug
  end
end
