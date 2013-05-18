class AddMoreColumnsToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string
    add_column :users, :state, :string
  end
end
