class AddColumnsToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :tagline, :string
    add_column :blogs, :message, :string
    add_column :blogs, :country, :string
    add_column :blogs, :url_model, :string
  end
end
