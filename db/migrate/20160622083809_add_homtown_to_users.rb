class AddHomtownToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hometown, :string
    add_column :users, :country, :string
  end
end
