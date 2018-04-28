class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :description, :text
    add_column :articles, :created_date, :datetime
    add_column :articles, :updated_date, :datetime
  end
end
