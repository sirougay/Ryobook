class AddUserIdToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :poster_id, :integer
  end
end
