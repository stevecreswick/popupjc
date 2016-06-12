class AddHeaderImageToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :header_image, :string
  end
end
