class RemoveStringFromPortfolios < ActiveRecord::Migration
  def up
    remove_column :portfolios, :string
  end

  def down
    add_column :portfolios, :string, :string
  end
end
