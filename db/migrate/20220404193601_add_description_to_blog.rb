class AddDescriptionToBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :description, :string
  end
end
