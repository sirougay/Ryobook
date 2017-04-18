class AddUser2IdToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :receiver_id, :integer
  end
end
