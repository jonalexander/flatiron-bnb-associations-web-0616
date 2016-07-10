class AddColumnsToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :description, :text
    add_column :reviews, :rating, :integer
  end
end
