class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :string
      t.string :portfolio_image
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
