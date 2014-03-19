class Portfolio < ActiveRecord::Base
  attr_accessible :description, :portfolio_image, :string, :title, :website, :remove_portfolio_image
end
